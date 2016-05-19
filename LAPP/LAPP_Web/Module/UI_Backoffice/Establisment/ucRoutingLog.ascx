<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucRoutingLog.ascx.cs" Inherits="ucRoutingLog" %>

  <div class="mapmaindiv">
                            <asp:HiddenField ID="hfOrigin" Value="NV,US" runat="server" />
                            <asp:HiddenField ID="hfDestination" Value="NY,US" runat="server" />
                            <asp:HiddenField ID="hidWaypoints" runat="server" />
                            <div id="map-canvas" style="float: left; width: 70%; height:100% ">
                            </div>
                            <div id="directionsPanel" style="float:right;width:29%;height:600px; margin-top:-2px; overflow:scroll"></div>
                      
                      </div>


<script>

    try {
        var rendererOptions = {
            draggable: true
        };
        var directionsDisplay = new google.maps.DirectionsRenderer(rendererOptions); ;
        var directionsService = new google.maps.DirectionsService();
        var map;
        // var waypts = [];
        // var checkboxArray = [];
        var count = 0;

        function initialize() {
            count = 0;
            // alert('initialize');
            // directionsDisplay = new google.maps.DirectionsRenderer();
            var reno = new google.maps.LatLng(39.529633, -119.813803);
            var mapOptions = {
                zoom: 4,
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                center: reno
            }
            map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
            directionsDisplay.setMap(map);
            var div = document.getElementById('directionsPanel')
            directionsDisplay.setPanel(document.getElementById('directionsPanel'));

                            google.maps.event.addListener(map, 'click', function (event) {
                               // placeMarker(event.latLng);
                            });
                            google.maps.event.addListener(directionsDisplay, 'directions_changed', function () {
                               // computeTotalDistance(directionsDisplay.directions);
                            });
        }
                    function placeMarker(location) {
                        var marker = new google.maps.Marker({
                            position: location,
                            map: map
                        });

                        //map.setCenter(location);
                    }

        function isEmpty(str) {
            return (!str || 0 === str.length);
        }

        function addWaypoits() {
            var txtVal = 'University of Nevada, Reno'; //  document.getElementById('wayp').value;
            var lblVal = 'Reno Arch,Reno'; //  document.getElementById('hidWaypoints').value;
            var completeString;
            if (count > 0) {
                completeString = lblVal + '|' + txtVal;
            }
            else {
                if (txtVal != "") {
                    completeString = txtVal;
                }

                else {
                    completeString = lblVal;
                }
            }

            //document.getElementById('hidWaypoints').value = completeString; //.replace(/^,/, '');
//            count++;
//            var div = document.getElementById('showWaypoint');
//            div.innerHTML = '';
//            var wayPointsRepeat = [];
//            if (count > 0) {
//                wayPointsRepeat = completeString.split('|');
//                for (var i = 0; i < wayPointsRepeat.length; i++) {

//                    div.innerHTML += '<div style="border-bottom:1px solid #ddd" onclick="removeA(\'' + wayPointsRepeat[i] + '\',this)">' + wayPointsRepeat[i] + '     [X]</div> ';

//                }
//            }

           // document.getElementById('wayp').value = '';
            calcRoute();
        }

        function removeA(e, div) {

            var wapoint2 = document.getElementById('hidWaypoints').value; //.split('|');
            wapoint2 = wapoint2.replace(e, '').replace('||', '');

            if (wapoint2.charAt(wapoint2.length - 1) == '|') {
                wapoint2 = wapoint2.substr(0, wapoint2.length - 1);
            }
            if (wapoint2.charAt(0) == '|') {
                wapoint2 = wapoint2.replace('|', '');
            }
            if (wapoint2.length == 1) {
                wapoint2 = wapoint2.replace('|', '');
                count = 0;
            }
            if (wapoint2.length == 0) {
                count = 0;
            }

            document.getElementById('hidWaypoints').value = wapoint2; //.join("|");
            div.remove();
            calcRoute();
        }

        function calcRoute() {
            var start = 'Rancho San Rafael park,Reno'; //  document.getElementById('hfOrigin').value;
            var end = '303 East 6th Street, Reno, NV 89512, USA'; //  document.getElementById('hfDestination').value;
            var checkboxArray = [];
            var waypts = [];
            var wapoint = '1585 North Sierra Street, Reno, NV 89503, USA | 98 Galen Place, Reno, NV 89503, USA'; //  document.getElementById('hidWaypoints').value;
            if (wapoint) {
                checkboxArray = wapoint.split('|');

                for (var i = 0; i < checkboxArray.length; i++) {

                    waypts.push({
                        location: checkboxArray[i],
                        stopover: true
                    });

                }
            }
            // alert(waypts);
            var request = {
                origin: start,
                destination: end,
                waypoints: waypts,
                optimizeWaypoints: true,
                travelMode: google.maps.TravelMode.DRIVING
            };
            directionsService.route(request, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                    var totalDist = 0;
                    var route = response.routes[0];
//                    var summaryPanel = document.getElementById('directionsPanel');
//                    summaryPanel.innerHTML = '';
//                    // For each route, display summary information.
//                    for (var i = 0; i < route.legs.length; i++) {
//                        var routeSegment = i + 1;
//                        summaryPanel.innerHTML += '<b>Route Segment: ' + routeSegment + '</b><br>';
//                        summaryPanel.innerHTML += route.legs[i].start_address + ' to ';
//                        summaryPanel.innerHTML += route.legs[i].end_address + '<br>';
//                        summaryPanel.innerHTML += route.legs[i].distance.text + '<br><br>';
//                        totalDist += parseFloat(route.legs[i].distance.text);
//                    }
                   // document.getElementById('TotalDistance').innerHTML = totalDist + ' miles';
                }
            });
        }

        google.maps.event.addDomListener(window, 'load', initialize);

    }
    catch (e) {
        alert(e);
    }
    function addWaypoints_onclick() {
        var txtVal = document.getElementById('wayp').value;
        if (txtVal != "") {
            addWaypoits();
        }
        else {
            var message = 'Please enter Stop.';
            $('#ltrMess').text(message);
            //return;
        }
    }

    //        function addWaypoints_onclick() {

    //        }

    $(function () {
        //calcRoute();
    });

</script>