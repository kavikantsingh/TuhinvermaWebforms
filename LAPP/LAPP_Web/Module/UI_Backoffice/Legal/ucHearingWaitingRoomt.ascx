<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHearingWaitingRoomt.ascx.cs" Inherits="Module_UI_Backoffice_Legal_ucHearingWaitingRoomt" %>
<style>
    .CallListCalender tr th {
 border: 1px solid #DEDEDE;
color: #178FE5;
text-align: center;
padding: 2px;
height: 30px;
padding-top: 10px;
    }
    .CallListCalenderPre{ border: medium none;
text-align: center;
padding-top: 15px;
font-weight: bold;
padding-bottom: 15px;}
    .CallListCalender {
        border: 1px solid #DEDEDE;
padding: 5px !important;
background-color: #FAFAFA;
text-align: right;
height: 83px;
font-size: 14px;
    }
    .CallListCalendertitle{  font-weight:bold;background-color: rgb(236, 236, 236);
border: 1px solid rgb(222, 222, 222); border-bottom:none;}

    #ContentPlaceHolder1_MidContent_ucCallList_Calendar1 {
        width: 100%;
        height: 400px;
        margin: 0 auto;
        border:1px solid #dedede;
    }

        #ContentPlaceHolder1_MidContent_ucCallList_Calendar1 tr td:first-child {
            padding: 0px;
        }

        #ContentPlaceHolder1_MidContent_ucCallList_Calendar1 tr td .CallListCalender td:first-child {
            padding-top: 12px;
            padding-left: 4px;
        }

        #ContentPlaceHolder1_MidContent_ucCallList_Calendar1 tr td .CallListCalender td:last-child {
            padding-top: 12px;
            padding-right: 4px;
        }
</style>

<style>

    ul.buttons-group li.button {
    display: inline-block;
    padding: 5px;
    cursor: pointer;
    font-size: 14px;
    color: #000 !important;
    text-shadow:none;
    height: 29px;
border: 1px solid #C3C3C3;
    text-decoration: none;
    border-top: 1px solid #ACBFC3;
    border-bottom: 1px solid #829FA4;
    background: transparent -moz-linear-gradient(center top , #FFF, #E6E6E6) repeat scroll 0% 0%;
}
    ul.buttons-group li.button a {
    display: block;
    color: inherit !important;
    text-decoration: none;
}
    .dhtmlx_message_area {
	position:fixed;
	right:5px;
	width:250px;
	z-index:1000
}
.dhtmlx-info {
	min-width:120px;
	font-family:Tahoma;
	z-index:10000;
	overflow:hidden;
	margin:5px 5px 10px;
	-webkit-transition:all .5s ease;
	-moz-transition:all .5s ease;
	-o-transition:all .5s ease;
	transition:all .5s ease
}
.dhtmlx-info.hidden {
	height:0;
	padding:0;
	border-width:0;
	margin:0;
	overflow:hidden
}
.dhtmlx_modal_box {
	overflow:hidden;
	display:inline-block;
	min-width:300px;
	text-align:center;
	position:fixed;
	box-shadow:0 0 14px #888;
	font-family:Tahoma;
	z-index:20000;
	border-radius:6px;
	border:1px solid #fff
}
.dhtmlx_popup_title {
	border-top-left-radius:5px;
	border-top-right-radius:5px;
	border-width:0;
	background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAAoCAMAAAAIaGBFAAAAhFBMVEVwcHBubm5sbGxqampoaGhmZmZlZWVjY2NhYWFfX19dXV1bW1taWlpYWFhWVlZUVFRSUlJRUVFPT09NTU1LS0tJSUlHR0dGRkZERERCQkJAQEA+Pj49PT09PT0+Pj5AQEBBQUFDQ0NERERGRkZHR0dJSUlKSkpMTExMTEw5OTk5OTk5OTkny8YEAAAAQklEQVQImQXBCRJCAAAAwKVSQqdyjSPXNP7/QLsIhA6OTiJnF7GrRCpzc/fw9PKW+/gqlCq1RqvTG/yMJrPF6m/bAVEhAxxnHG0oAAAAAElFTkSuQmCC);
	background:-webkit-linear-gradient(top,#707070 1%,#3d3d3d 70%,#4c4c4c 97%,#393939 97%);
	background:-moz-linear-gradient(top,#707070 1%,#3d3d3d 70%,#4c4c4c 97%,#393939 97%)
}
.dhtmlx-info,.dhtmlx_button,.dhtmlx_popup_button {
	user-select:none;
	-webkit-user-select:none;
	-moz-user-select:-moz-none;
	cursor:pointer
}
.dhtmlx_popup_text {
	overflow:hidden
}
.dhtmlx_popup_controls {
	border-radius:6px;
	padding:5px
}
.dhtmlx_button,.dhtmlx_popup_button {
	height:30px;
	line-height:30px;
	display:inline-block;
	margin:0 5px;
	border-radius:6px;
	color:#FFF
}
.dhtmlx_popup_button {
	min-width:120px
}
div.dhx_modal_cover {
	background-color:#000;
	cursor:default;
	filter:alpha(opacity=20);
	opacity:.2;
	position:fixed;
	z-index:19999;
	left:0;
	top:0;
	width:100%;
	height:100%;
	border:none;
	zoom:1
}
.dhtmlx-info img,.dhtmlx_modal_box img {
	float:left;
	margin-right:20px
}
.dhtmlx-alert-error .dhtmlx_popup_title,.dhtmlx-confirm-error .dhtmlx_popup_title {
	background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAAsCAIAAAArRUU2AAAATklEQVR4nIWLuw2AMBBDjVuQiBT2oWbRDATrnB0KQOJoqPzRe3BrHI6dcBASYREKovtK6/6DsDOX+stN+3H1YX9ciRgnYq5EWYhS2dftBIuLT4JyIrPCAAAAAElFTkSuQmCC)
}
.dhtmlx-alert-error,.dhtmlx-confirm-error {
	border:1px solid red
}
.dhtmlx_button,.dhtmlx_popup_button {
	box-shadow:0 0 4px #888;
	border:1px solid #838383
}
.dhtmlx_button input,.dhtmlx_popup_button div {
	border:1px solid #FFF;
	background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAAeCAMAAADaS4T1AAAAYFBMVEVwcHBtbW1ra2toaGhmZmZjY2NhYWFeXl5cXFxaWlpXV1dVVVVSUlJQUFBNTU1LS0tJSUlGRkZERERBQUE/Pz88PDw9PT0+Pj5AQEBCQkJDQ0NFRUVHR0dISEhKSkpMTEzqthaMAAAAMklEQVQImQXBhQ2AMAAAsOIMlwWH/8+kRSKVyRVKlVrQaHV6g9FktlhFm93hdLk9Xt8PIfgBvdUqyskAAAAASUVORK5CYII=);
	background:-webkit-linear-gradient(top,#707070 1%,#3d3d3d 70%,#4c4c4c 99%);
	background:-moz-linear-gradient(top,#707070 1%,#3d3d3d 70%,#4c4c4c 99%);
	border-radius:6px;
	font-size:15px;
	font-weight:400;
	-moz-box-sizing:content-box;
	box-sizing:content-box;
	color:#fff;
	padding:0;
	margin:0;
	vertical-align:top;
	height:28px;
	line-height:28px
}
.dhtmlx_button input:active,.dhtmlx_button input:focus,.dhtmlx_popup_button div:active,.dhtmlx_popup_button div:focus {
	background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAAeCAMAAADaS4T1AAAAXVBMVEVwcHBubm5tbW1sbGxra2tpaWloaGhnZ2dmZmZlZWVjY2NiYmJhYWFgYGBfX19dXV1cXFxbW1taWlpZWVlXV1dWVlZVVVVUVFRTU1NRUVFQUFBPT09OTk5NTU1LS0tT9SY0AAAAMUlEQVQImQXBhQGAMAAAIGxnx2z9/00BiVQmVyhVakGj1ekNRpPZYhVtdofT5fZ4fT8hpwG05JjexgAAAABJRU5ErkJggg==);
	background:-webkit-linear-gradient(top,#707070 1%,#4c4c4c 99%);
	background:-moz-linear-gradient(top,#707070 1%,#4c4c4c 99%)
}
.dhtmlx_popup_title {
	color:#fff;
	text-shadow:1px 1px #000;
	height:40px;
	line-height:40px;
	font-size:20px
}
.dhtmlx_popup_text {
	margin:15px 15px 5px;
	font-size:14px;
	color:#000;
	min-height:30px;
	border-radius:6px
}
.dhtmlx-error,.dhtmlx-info {
	font-size:14px;
	color:#000;
	box-shadow:0 0 10px #888;
	padding:0;
	background-color:#FFF;
	border-radius:3px;
	border:1px solid #fff
}
.dhtmlx-info div {
	padding:5px 10px;
	background-color:#fff;
	border-radius:3px;
	border:1px solid #B8B8B8
}
.dhtmlx-error {
	background-color:#d81b1b;
	border:1px solid #ff3c3c;
	box-shadow:0 0 10px #000
}
.dhtmlx-error div {
	background-color:#d81b1b;
	border:1px solid #940000;
	color:#FFF
}
.dhx_cal_event .dhx_body,.dhx_cal_event .dhx_footer,.dhx_cal_event .dhx_header,.dhx_cal_event .dhx_title {
	border:1px solid #B7A543;
	overflow:hidden;
	width:100%;
	font-family:Tahoma;
	font-size:8pt
}
.dhx_move_denied .dhx_cal_event .dhx_header,.dhx_move_denied .dhx_cal_event .dhx_title {
	cursor:default
}
.dhx_cal_event .dhx_header {
	height:1px;
	margin-left:1px;
	border-width:1px 1px 0;
	cursor:pointer
}
.dhx_cal_event .dhx_title {
	height:12px;
	border-bottom-style:dotted;
	text-align:center;
	background-position:right;
	background-repeat:no-repeat;
	cursor:pointer
}
.dhx_cal_event .dhx_body,.dhx_cal_event.dhx_cal_select_menu .dhx_body {
	border-width:0 1px 1px;
	padding:5px
}
.dhx_resize_denied,.dhx_resize_denied .dhx_event_resize {
	cursor:default!important
}
.dhx_cal_event .dhx_event_resize {
	cursor:s-resize
}
.dhx_cal_event .dhx_footer,.dhx_cal_event .dhx_select_menu_footer {
	height:1px;
	margin-left:2px;
	border-width:0 1px 1px;
	position:relative
}
.dhx_cal_event_line {
	padding-left:10px;
	cursor:pointer;
	overflow:hidden
}
.dhx_cal_event_clear {
	font-family:Tahoma;
	font-size:8pt;
	height:13px;
	padding-left:2px;
	white-space:nowrap;
	overflow:hidden;
	cursor:pointer
}
.dhx_in_move {
	background-color:#FFFF80
}
.dhx_cal_event.dhx_cal_editor {
	z-index:999;
	position:absolute;
	overflow:hidden
}
textarea.dhx_cal_editor {
	width:100%;
	height:100%;
	border:0 solid #000;
	margin:0;
	padding:0;
	overflow:auto
}
div.dhx_menu_head {
	background-position:0 -43px;
	width:10px;
	height:10px;
	margin-left:5px;
	margin-top:1px;
	border:none;
	cursor:default
}
div.dhx_menu_icon {
	width:20px;
	height:20px;
	margin-left:-5px;
	margin-top:0;
	border:none;
	cursor:pointer
}
div.icon_details {
	background-position:0 0
}
div.icon_edit {
	background-position:-22px 0
}
div.icon_save {
	background-position:-84px -1px
}
div.icon_cancel {
	background-position:-62px 0
}
div.icon_delete {
	background-position:-42px 0
}
.dhx_month_link {
	position:absolute;
	box-sizing:border-box;
	-moz-box-sizing:border-box;
	text-align:right;
	cursor:pointer;
	padding-right:10px
}
.dhx_month_link a {
	color:#00f
}
.dhx_month_link a:hover {
	text-decoration:underline
}
.dhx_global_tip {
	font-family:Tahoma,Helvetica;
	text-align:center;
	font-size:20px;
	position:fixed;
	top:60px;
	right:20px;
	background-color:rgba(255,255,255,.7);
	color:#000;
	z-index:10000;
	padding:20px 30px;
	width:190px
}
.dhx_global_tip div {
	font-size:30px
}
@media (-moz-touch-enabled) {
	.dhx_cal_container_ {
		user-select:none;
		-moz-user-select:none
	}
}
.dhx_unselectable,.dhx_unselectable div {
	-webkit-user-select:none;
	-moz-user-select:none;
	-moz-user-select:-moz-none
}
.dhx_cal_light {
	-webkit-tap-highlight-color:transparent;
	border-radius:5px;
	font-family:Tahoma;
	font-size:8pt;
	position:absolute;
	z-index:10001;
	width:580px;
	height:300px;
	box-shadow:5px 5px 5px #888
}
.dhx_mark {
	position:relative;
	top:3px;
	background-image:url(imgs/controls.gif);
	background-position:0 -43px;
	padding-left:10px
}
.dhx_ie6 .dhx_mark {
	background-position:6px -41px
}
.dhx_cal_light select {
	font-family:Tahoma;
	font-size:8pt;
	padding:2px;
	margin:0
}
.dhx_cal_ltitle {
	padding:2px 0 2px 5px;
	overflow:hidden;
	white-space:nowrap
}
.dhx_cal_ltitle span {
	white-space:nowrap
}
.dhx_cal_lsection {
	font-weight:700;
	padding:5px 0 3px 10px
}
.dhx_section_time {
	white-space:nowrap
}
.dhx_cal_lsection .dhx_fullday {
	float:right;
	margin-right:5px;
	font-size:12px;
	font-weight:400;
	line-height:20px;
	vertical-align:top;
	cursor:pointer
}
.dhx_cal_lsection {
	font-size:18px;
	font-family:Arial
}
.dhx_cal_ltext {
	padding:2px 0 2px 10px;
	overflow:hidden
}
.dhx_cal_ltext textarea {
	overflow:auto;
	height:100%;
	width:100%;
	outline:0!important;
	resize:none
}
.dhx_time {
	font-weight:700
}
.dhx_cal_larea {
	overflow:hidden;
	width:572px;
	height:1px
}
.dhx_btn_set {
	float:left
}
.dhx_btn_set div {
	float:left;
	vertical-align:middle;
	cursor:pointer
}
.dhx_save_btn {
	background-image:url(imgs/controls.gif);
	background-position:-84px 0;
	width:21px
}
.dhx_cancel_btn {
	background-image:url(imgs/controls.gif);
	background-position:-63px 0;
	width:20px
}
.dhx_delete_btn {
	background-image:url(imgs/controls.gif);
	background-position:-42px 0;
	width:20px
}
.dhx_cal_cover {
	width:100%;
	height:100%;
	position:absolute;
	z-index:10000;
	top:0;
	left:0;
	background-color:#000;
	opacity:.1;
	filter:alpha(opacity=10)
}
.dhx_custom_button {
	padding:0 3px;
	font-family:Tahoma;
	font-size:8pt;
	font-weight:400;
	margin-right:5px;
	margin-top:0;
	cursor:pointer
}
.dhx_custom_button div {
	cursor:pointer;
	float:left;
	height:21px;
	line-height:21px;
	vertical-align:middle
}
.dhx_cal_light_wide .dhx_cal_larea {
	border-top-width:0
}
.dhx_cal_light_wide .dhx_cal_lsection {
	border:0;
	float:left;
	text-align:right;
	width:100px;
	height:20px;
	padding:5px 0 0 10px
}
.dhx_cal_light_wide .dhx_wrap_section {
	position:relative;
	overflow:hidden
}
.dhx_cal_light_wide .dhx_section_time {
	padding-top:2px!important;
	height:20px!important
}
.dhx_section_time {
	text-align:center
}
.dhx_cal_light_wide .dhx_cal_larea {
	width:730px
}
.dhx_cal_light_wide {
	width:738px
}
.dhx_cal_light_wide .dhx_section_time {
	background:0 0
}
.dhx_cal_light_wide .dhx_cal_checkbox label {
	padding-left:0
}
.dhx_cal_wide_checkbox input {
	margin-top:8px;
	margin-left:14px
}
.dhx_cal_light input {
	font-family:Tahoma;
	font-size:8pt
}
.dhx_cal_light_wide .dhx_cal_lsection .dhx_fullday {
	float:none;
	margin-right:0;
	font-weight:700;
	font-family:Arial;
	cursor:pointer
}
.dhx_custom_button {
	float:right;
	height:21px
}
.dhx_cal_light_wide .dhx_custom_button {
	position:absolute;
	top:0;
	right:0
}
.dhx_cal_light_wide .dhx_repeat_right {
	margin-right:55px
}
.dhx_minical_popup {
	position:absolute;
	z-index:10100;
	width:251px;
	height:175px
}
.dhx_scale_bar_header {
	position:absolute;
	border-bottom:1px dotted #8894A3;
	width:100%
}
.dhx_expand_icon {
	position:absolute;
	right:0;
	background-image:url(imgs/collapse_expand_icon.gif);
	width:18px;
	height:18px;
	cursor:pointer;
	background-position:0 18px;
	z-index:16
}
.dhx_scheduler_agenda .dhx_cal_data_ {
	background-image:url(../../App_Themes/Theme1/images/databg.png)
}
.dhx_agenda_area {
	width:100%;
	overflow-y:auto;
	background-image:url(../../App_Themes/Theme1/images/databg.png)
}
.dhx_agenda_line {
	height:21px;
	clear:both;
	overflow:hidden
}
.dhx_agenda_line div {
	float:left;
	width:188px;
	text-align:center;
	line-height:21px;
	overflow:hidden
}
.dhx_agenda_area .dhx_agenda_line div {
	border-right:0 dotted #8894A3
}
.dhx_v_border {
	position:absolute;
	left:187px;
	top:0;
	width:1px;
	height:100%
}
.dhx_agenda_line .dhx_event_icon {
	width:20px;
	border-width:0;
	background:url(imgs/icon.png) 5px 4px no-repeat;
	cursor:pointer
}
.dhx_agenda_line span {
	padding-left:5px;
	line-height:21px
}
.dhx_year_week {
	position:relative
}
.dhx_year_month {
	height:18px;
	padding-top:3px;
	text-align:center;
	vertical-align:middle
}
.dhx_year_body .dhx_after .dhx_month_head,.dhx_year_body .dhx_after .dhx_month_head a,.dhx_year_body .dhx_before .dhx_month_head,.dhx_year_body .dhx_before .dhx_month_head a {
	color:#E2E3E6!important
}
.dhx_year_body .dhx_month_body {
	height:0;
	overflow:hidden
}
.dhx_month_head.dhx_year_event {
	background-color:#FFE763
}
.dhx_year_body .dhx_after .dhx_month_head,.dhx_year_body .dhx_before .dhx_month_head {
	cursor:default
}
.dhx_year_tooltip {
	border:1px solid #BBB;
	background-image:url(../../App_Themes/Theme1/images/databg.png);
	position:absolute;
	z-index:9998;
	width:300px;
	height:auto;
	font-family:Tahoma;
	font-size:8pt;
	overflow:hidden
}
.dhx_tooltip_line {
	line-height:20px;
	height:20px;
	overflow:hidden
}
.dhx_tooltip_line .dhx_event_icon {
	width:20px;
	height:20px;
	padding-right:10px;
	float:left;
	border-width:0;
	position:relative;
	background:url(imgs/icon.png) 5px 4px no-repeat;
	cursor:pointer
}
.dhx_tooltip_date {
	float:left;
	width:auto;
	padding-left:5px;
	text-align:center
}
.dhx_text_disabled {
	font-family:Tahoma;
	font-size:8pt
}
.dhx_mini_calendar {
	-moz-box-shadow:5px 5px 5px #888;
	-khtml-box-shadow:5px 5px 5px #888;
	-moz-user-select:-moz-none;
	-webkit-user-select:none;
	-user-select:none
}
.dhx_mini_calendar .dhx_month_head {
	cursor:pointer
}
.dhx_mini_calendar .dhx_calendar_click {
	background-color:#C2D5FC
}
.dhx_cal_navline_ div.dhx_minical_icon {
	cursor:pointer;
	background-image:url(imgs/calendar.gif)
}
.dhx_matrix_scell {
	height:100%
}
.dhx_matrix_cell,.dhx_matrix_scell {
	overflow:hidden;
	text-align:center;
	vertical-align:middle
}
.dhx_matrix_cell {
	background-color:#fff
}
.dhx_matrix_line {
	overflow:hidden
}
.dhx_matrix_cell div,.dhx_matrix_scell div {
	overflow:hidden;
	text-align:center;
	height:auto
}
.dhx_cal_lsection .dhx_readonly {
	font-size:9pt;
	font-size:8pt;
	padding:2px;
	color:#887A2E
}
.dhx_cal_event_line .dhx_event_resize {
	cursor:w-resize;
	position:absolute;
	top:0;
	width:4px;
	height:100%
}
.dhx_event_resize_start {
	left:0
}
.dhx_event_resize_end {
	right:0
}
.dhx_data_table.folder .dhx_matrix_cell,.dhx_matrix_scell.folder {
	background-color:#969394;
	cursor:pointer
}
.dhx_matrix_scell .dhx_scell_level0 {
	padding-left:5px
}
.dhx_matrix_scell .dhx_scell_level1 {
	padding-left:20px
}
.dhx_matrix_scell .dhx_scell_level2 {
	padding-left:35px
}
.dhx_matrix_scell .dhx_scell_level3 {
	padding-left:50px
}
.dhx_matrix_scell .dhx_scell_level4 {
	padding-left:65px
}
.dhx_matrix_scell.folder {
	font-weight:700;
	text-align:left
}
.dhx_matrix_scell.folder .dhx_scell_expand {
	float:left;
	width:10px;
	padding-right:3px
}
.dhx_matrix_scell.folder .dhx_scell_name {
	float:left;
	width:auto
}
.dhx_matrix_scell.item .dhx_scell_name {
	padding-left:15px;
	text-align:left
}
.dhx_data_table.folder .dhx_matrix_cell {
	border-right:0
}
.dhx_section_timeline {
	overflow:hidden;
	padding:4px 0 2px 10px
}
.dhx_section_timeline select {
	width:552px
}
.dhx_map_area {
	width:100%;
	height:100%;
	overflow-y:auto;
	overflow-x:hidden;
	background-image:url(../../App_Themes/Theme1/images/databg.png)
}
.dhx_map_line .dhx_event_icon {
	width:20px;
	border-width:0;
	background:url(imgs/icon.png) 5px 4px no-repeat;
	cursor:pointer
}
.dhx_map_line {
	height:21px;
	clear:both;
	overflow:hidden
}
.dhx_map {
	position:absolute
}
.dhx_map_line .headline_description,.dhx_map_line div {
	float:left;
	border-right:1px dotted #8894A3;
	text-align:center;
	line-height:21px;
	overflow:hidden
}
.dhx_map_line .dhx_map_description {
	float:left;
	border-right:0 dotted #8894A3;
	text-align:center;
	line-height:21px;
	overflow:hidden
}
.dhx_map_line .line_description {
	float:left;
	border-right:1px dotted #8894A3;
	text-align:left;
	padding-left:5px;
	line-height:21px;
	overflow:hidden
}
.dhx_map_line.highlight {
	background-color:#C4C5CC
}
.dhx_map_area .dhx_map_line div {
	border-right:0 dotted #8894A3
}
.dhtmlXTooltip.tooltip {
	-moz-box-shadow:3px 3px 3px #888;
	-webkit-box-shadow:3px 3px 3px #888;
	-o-box-shadow:3px 3px 3px #888;
	box-shadow:3px 3px 3px #888;
	filter:progid:DXImageTransform.Microsoft.Shadow(color='#888888', Direction=135, Strength=5);
	background-color:#fff;
	cursor:default;
	padding:10px;
	position:absolute;
	z-index:500;
	font-family:Tahoma;
	opacity:1
}
.dhx_cal_checkbox label {
	padding-left:5px
}
.dhx_cal_light .radio {
	padding:2px 0 2px 10px
}
.dhx_cal_light .radio input,.dhx_cal_light .radio label {
	line-height:15px
}
.dhx_cal_light .radio input {
	vertical-align:middle;
	margin:0;
	padding:0
}
.dhx_cal_light .radio label {
	vertical-align:middle;
	padding-right:10px
}
.dhx_cal_light .combo {
	padding:4px
}
.dhx_cal_light_wide .dhx_combo_box {
	width:608px!important;
	left:10px
}
.dhx_wa_column {
	float:left
}
.dhx_wa_scale_bar {
	font-family:Tahoma;
	padding-left:10px;
	font-size:11px
}
.dhx_wa_day_data {
	background-color:#FCFEFC;
	overflow-y:auto
}
.dhx_wa_ev_body {
	font-size:12px;
	padding:5px 0 5px 7px
}
.dhx_wa_dnd {
	font-family:Tahoma;
	position:absolute;
	padding-right:7px;
	color:#887AE2!important;
	background-color:#FFE763!important
}
.dhx_cal_event_selected {
	background-color:#9cc1db;
	color:#fff
}
.dhx_second_scale_bar {
	padding-top:2px
}
.dhx_grid_area {
	width:100%;
	height:100%;
	overflow-y:auto;
	background-color:#FCFEFC
}
.dhx_grid_area table {
	border-collapse:collapse;
	border-spacing:0;
	width:100%;
	table-layout:fixed
}
.dhx_grid_area td {
	table-layout:fixed;
	text-align:center
}
.dhx_grid_line {
	height:21px;
	clear:both;
	overflow:hidden
}
.dhx_grid_line div {
	float:left;
	cursor:default;
	padding-top:0;
	padding-bottom:0;
	text-align:center;
	line-height:21px;
	overflow:hidden
}
.dhx_grid_area td,.dhx_grid_line div {
	padding-left:8px;
	padding-right:8px
}
.dhx_grid_area tr.dhx_grid_event {
	height:21px;
	overflow:hidden;
	margin:0 0 1px
}
.dhx_grid_area tr.dhx_grid_event td {
	border-bottom:1px solid #ECEEF4
}
.dhx_grid_area tr.dhx_grid_event:nth-child(2n) td,.dhx_grid_area tr.dhx_grid_event:nth-child(2n+1) td {
	border-bottom-width:0;
	border-bottom-style:none
}
.dhx_grid_area tr.dhx_grid_event:nth-child(2n) {
	background-color:#ECEEF4
}
.dhx_grid_area .dhx_grid_dummy {
	table-layout:auto;
	margin:0!important;
	padding:0!important
}
.dhx_grid_v_border {
	position:absolute;
	border-right:1px solid #A4BED4;
	width:1px;
	height:100%
}
.dhx_grid_event_selected {
	background-color:#9cc1db!important;
	color:#fff!important
}
.dhx_grid_sort_desc .dhx_grid_view_sort {
	background-position:0 -55px
}
.dhx_grid_sort_asc .dhx_grid_view_sort {
	background-position:0 -66px
}
.dhx_grid_view_sort {
	width:10px;
	height:10px;
	position:absolute;
	border:none!important;
	top:5px;
	background-repeat:no-repeat;
	background-image:url(imgs/images.png)
}
.dhx_marked_timespan {
	position:absolute;
	width:100%;
	margin-left:0
}
.dhx_time_block {
	position:absolute;
	width:100%;
	background:silver;
	opacity:.4;
	filter:alpha(opacity=40);
	z-index:1
}
.dhx_time_block_reset {
	opacity:1;
	filter:alpha(opacity=100)
}
.dhx_mini_calendar .dhx_marked_timespan,.dhx_scheduler_month .dhx_marked_timespan {
	display:none
}
.dhx_now_time {
	width:100%;
	border-bottom:2px solid red;
	z-index:1
}
.dhx_scheduler_month .dhx_now_time {
	border-bottom:0;
	border-left:2px solid red
}
.dhx_matrix_now_time {
	border-left:2px solid red;
	z-index:1
}
.dhx_matrix_now_time,.dhx_now_time {
	opacity:.5
}
.dhx_cal_quick_info {
	border:2px solid #888;
	border-radius:5px;
	position:absolute;
	z-index:300;
	background-color:#8e99ae;
	background-color:rgba(98,107,127,.5);
	padding-left:7px;
	width:300px;
	transition:left .5s ease,right .5s;
	-moz-transition:left .5s ease,right .5s;
	-webkit-transition:left .5s ease,right .5s;
	-o-transition:left .5s ease,right .5s
}
.dhx_no_animate {
	transition:none;
	-moz-transition:none;
	-webkit-transition:none;
	-o-transition:none
}
.dhx_cal_quick_info.dhx_qi_left .dhx_qi_big_icon {
	float:right
}
.dhx_cal_qi_title {
	padding:5px 0 10px 5px;
	color:#FFF;
	letter-spacing:1px
}
.dhx_cal_qi_tdate {
	font-size:14px
}
.dhx_cal_qi_tcontent {
	font-size:18px;
	font-weight:700
}
.dhx_cal_qi_content {
	border:1px solid #888;
	background-color:#fefefe;
	padding:16px 8px;
	font-size:14px;
	color:#444;
	width:275px;
	overflow:hidden
}
.dhx_qi_big_icon {
	border-radius:3px;
	margin:5px 9px 5px 0;
	min-width:60px;
	line-height:20px;
	vertical-align:middle;
	padding:5px 10px 5px 5px;
	cursor:pointer;
	background-color:#fefefe;
	border-bottom:1px solid #666;
	border-right:1px solid #666;
	float:left
}
.dhx_cal_qi_controls div {
	float:left;
	height:20px;
	text-align:center;
	line-height:20px
}
.dhx_qi_big_icon .dhx_menu_icon {
	margin:0 8px 0 0
}
.dhx_drag_marker {
	width:100%;
	filter:alpha(Opacity=50);
	opacity:.5;
	background-color:#FFE763;
	position:absolute;
	box-sizing:border-box!important;
	border-top:1px solid #B6B6B6;
	border-bottom:1px solid #b6b6b6
}
.dhx_no_select {
	-webkit-touch-callout:none;
	-webkit-user-select:none;
	-khtml-user-select:none;
	-moz-user-select:-moz-none;
	-ms-user-select:none;
	user-select:none
}
.dhx_drag_placeholder {
	z-index:10;
	opacity:.8
}
.dhx_drag_placeholder .dhx_cal_select_menu {
	display:none
}
.dhx_cal_data_,.dhx_cal_data_ div,.dhx_cal_data_ table *,.dhx_cal_header_,.dhx_cal_header_ div,.dhx_cal_navline_ div,.dhx_cal_quick_info,.dhx_cal_quick_info div,.dhx_multi_day_,.dhx_multi_day_ div,.dhx_tooltip_line div {
	-webkit-box-sizing:content-box;
	-moz-box-sizing:content-box;
	box-sizing:content-box
}
.dhx_cal_data_ table {
	border-collapse:separate
}
.dhx_cal_light .dhx_cal_radio label {
	margin-bottom:0
}
.dhx_cal_event div {
	line-height:normal
}
.dhx_cal_container_ {
	font-family:Tahoma;
	font-size:8pt;
	position:relative;
	overflow:hidden
}
.dhx_cal_container_ div {
	-moz-user-select:none;
	-moz-user-select:-moz-none
}
.dhx_cal_navline_ {
	height:20px;
	position:absolute;
	z-index:3;
	width:750px;
	color:#2F3A48
}
.dhx_cal_navline_ div {
	position:absolute;
	white-space:nowrap
}
.dhx_cal_navline_ .dhx_cal_date_ {
	padding-top:1px
}
.dhx_cal_button .dhx_left_bg {
	width:1px;
	overflow:hidden;
	height:17px;
	z-index:20;
	top:0
}
.dhx_cal_prev_button_ {
	background-image:url(imgs/buttons.png);
	background-position:0 0;
	cursor:pointer
}
.dhx_cal_next_button_ {
	background-image:url(imgs/buttons.png);
	background-position:-30px 0;
	cursor:pointer
}
.dhx_cal_today_button {
	background-image:url(imgs/buttons.png);
	background-position:-60px 0;
	cursor:pointer;
	text-align:center
}
.dhx_cal_tab_ {
	text-align:center;
	cursor:pointer;
	background-color:#D8E1EA;
	-webkit-border-top-left-radius:4px;
	-webkit-border-top-right-radius:4px;
	-moz-border-radius-topleft:4px;
	-moz-border-radius-topright:4px;
	border-top-left-radius:4px;
	border-top-right-radius:4px
}
.dhx_cal_tab_.active {
	text-decoration:none;
	cursor:default;
	font-weight:700
}
.dhx_cal_header_ {
	position:absolute;
	left:10px;
	top:23px;
	width:750px;
	z-index:2;
	overflow:hidden;
	color:#2F3A48
}
.dhx_cal_data_ {
	-webkit-tap-highlight-color:transparent;
	position:absolute;
	top:44px;
	width:600px;
	overflow-y:auto;
	overflow-x:hidden;
	-webkit-overflow-scrolling:touch;
	-ms-touch-action:pan-y
}
.dhx_cal_event,.dhx_cal_event_clear,.dhx_cal_event_line {
	-ms-touch-action:none
}
.dhx_scale_bar_ {
	position:absolute;
	text-align:center
}
.dhx_scale_holder_,.dhx_scale_holder_now {
	position:absolute
}
.dhx_scale_hour_ {
	height:41px;
	width:50px;
	text-align:center;
	line-height:40px;
	overflow:hidden
}
.dhx_month_head {
	padding-right:5px;
	text-align:right
}
.dhx_month_body {
	background-color:#FFF
}
.dhx_scale_ignore {
	display:none
}
.dhx_cal_drag {
	position:absolute;
	z-index:9999;
	background-color:#FFE763;
	border:1px solid #B7A543;
	opacity:.5;
	filter:alpha(opacity=50)
}
.dhx_loading {
	position:absolute;
	width:128px;
	height:15px;
	background-image:url(imgs/loading.gif);
	z-index:9999
}
.dhx_multi_day_,.dhx_multi_day_icon {
	background-color:#E1E6FF;
	background-repeat:no-repeat;
	border-right:1px dotted #8894A3
}
.dhx_multi_day_ {
	position:absolute
}
.dhx_multi_day_icon,.dhx_multi_day_icon_small {
	background-position:center center;
	background-repeat:no-repeat
}
.dhtmlxLayoutPolyContainer_dhx_skyblue .dhx_cal_container_ {
	background-color:#d0e5ff
}
.dhx_form_repeat,.dhx_form_repeat input {
	padding:0 0 0 5px;
	margin:0;
	font-family:Tahoma,Verdana;
	font-size:11px;
	line-height:24px
}
.dhx_form_repeat {
	overflow:hidden;
	background-color:#FFF4B5
}
.dhx_cal_light_wide .dhx_form_repeat {
	background-color:transparent
}
.dhx_repeat_center,.dhx_repeat_divider,.dhx_repeat_left,.dhx_repeat_right {
	height:115px;
	-moz-box-sizing:border-box;
	box-sizing:border-box
}
.dhx_repeat_center,.dhx_repeat_left {
	padding:10px 0 0 10px;
	float:left
}
.dhx_repeat_left {
	width:105px
}
.dhx_repeat_center {
	width:345px;
	padding-top:22px
}
.dhx_repeat_divider {
	float:left;
	width:1px
}
.dhx_repeat_right {
	float:right;
	width:173px;
	padding:17px 3px 0 10px
}
input.dhx_repeat_text {
	height:16px;
	width:27px;
	margin:0 4px;
	line-height:18px;
	padding:0 0 0 2px
}
.dhx_form_repeat select {
	height:20px;
	width:87px;
	padding:0 0 0 2px;
	margin:0 4px
}
input.dhx_repeat_date {
	height:18px;
	width:80px;
	padding:0 0 0 2px;
	margin:0 4px;
	background-repeat:no-repeat;
	background-position:64px 0;
	border:1px solid #7f9db9;
	line-height:18px
}
input.dhx_repeat_radio {
	margin-right:4px
}
input.dhx_repeat_checkbox {
	margin:4px 4px 0 0
}
.dhx_repeat_days td {
	padding-right:5px
}
.dhx_repeat_days label {
	font-size:10px
}
.dhx_custom_button {
	width:90px;
	-webkit-border-radius:4px;
	-moz-border-radius:4px;
	-ms-border-radius:4px;
	-o-border-radius:4px;
	border-radius:4px
}
.dhx_custom_button_recurring {
	background-position:-5px 20px;
	width:20px;
	margin-right:10px
}
.dhx_cal_light_rec {
	width:640px
}
.dhx_cal_light_rec .dhx_cal_larea {
	width:632px
}
.dhx_cal_light_rec.dhx_cal_light_wide {
	width:816px
}
.dhx_cal_light_rec.dhx_cal_light_wide .dhx_cal_larea {
	width:808px
}
.dhx_cal_event .dhx_title {
	border-width:1px 1px 0;
	padding-top:1px;
	-webkit-border-top-left-radius:4px;
	-webkit-border-top-right-radius:4px;
	-moz-border-radius-topleft:4px;
	-moz-border-radius-topright:4px;
	border-top-left-radius:4px;
	border-top-right-radius:4px;
	font-family:arial;
	font-weight:700;
	font-size:12px;
	line-height:12px
}
.dhx_cal_event .dhx_body,.dhx_cal_event.dhx_cal_select_menu .dhx_body {
	padding-bottom:8px;
	-webkit-border-bottom-right-radius:4px;
	-webkit-border-bottom-left-radius:4px;
	-moz-border-radius-bottomright:4px;
	-moz-border-radius-bottomleft:4px;
	border-bottom-right-radius:4px;
	border-bottom-left-radius:4px
}
.dhx_cal_event .dhx_header,.dhx_cal_event.dhx_cal_select_menu .dhx_footer {
	display:none
}
.dhx_cal_event.dhx_cal_select_menu {
	-webkit-box-shadow:0 0 1px #FFF;
	-moz-box-shadow:0 0 1px #FFF;
	box-shadow:0 0 1px #FFF
}
.dhx_cal_event .dhx_footer {
	height:5px;
	border:0;
	margin-top:-6px;
	background:url(imgs_dhx_terrace/resizing.png) center center no-repeat
}
.dhx_cal_event .dhx_body,.dhx_cal_event .dhx_footer,.dhx_cal_event .dhx_header,.dhx_cal_event .dhx_title {
	background-color:#1796b0;
	border-color:transparent;
	color:#fff
}
.dhx_cal_event.dhx_cal_editor {
	border:1px solid transparent
}
.dhx_cal_editor {
	font-size:12px;
	font-family:Arial,sans-serif
}
div.dhx_menu_head,div.dhx_menu_icon {
	background-image:url(imgs_dhx_terrace/controls.png)
}
.dhx_cal_event_line {
	border:1px solid transparent;
	background-color:#1796b0;
	color:#fff;
	height:17px;
	line-height:17px;
	-webkit-border-radius:2px;
	-moz-border-radius:2px;
	border-radius:2px
}
.dhx_cal_event_line_start {
	-webkit-border-top-left-radius:9px;
	-webkit-border-bottom-left-radius:9px;
	-moz-border-radius-topleft:9px;
	-moz-border-radius-bottomleft:9px;
	border-top-left-radius:9px;
	border-bottom-left-radius:9px
}
.dhx_cal_event_line_end {
	-webkit-border-top-right-radius:9px;
	-webkit-border-bottom-right-radius:9px;
	-moz-border-radius-topright:9px;
	-moz-border-radius-bottomright:9px;
	border-top-right-radius:9px;
	border-bottom-right-radius:9px
}
.dhx_cal_event .dhx_body,.dhx_cal_event_line {
	font-size:12px;
	font-family:Arial,sans-serif
}
.dhx_cal_container_ {
	background-color:#fff
}
.dhx_cal_data_ {
	border-top:1px solid #CECECE;
    width:100% !important;
}
.dhx_scale_holder_ {
	background-image:url(../../App_Themes/Theme1/images/databg.png);
	border-right:1px solid #CECECE;
    width:95% !important;
}
.dhx_scale_holder_now {
	background-image:url(../images/databg_now.png);
	border-right:1px solid #CECECE
}
.dhx_scale_hour_ {
	border-bottom:1px solid #CECECE;
	background-color:#fff;
	font:11px/44px Arial;
	color:#767676
}
.dhx_cal_header_ {
	border:1px solid #CECECE;
	border-left:0;
	border-bottom:0
}
.dhx_scale_bar_ {
	border-left:1px solid #CECECE;
	font:11px/16px Arial;
	color:#767676;
	padding-top:2px;
	background-color:#fff
}
.dhx_cal_navline_ div {
	top:14px
}
.dhx_cal_date_,.dhx_cal_next_button_,.dhx_cal_prev_button_,.dhx_cal_tab_,.dhx_cal_today_button {
	color:#454544;
	height:30px;
	line-height:30px;
	background:0 0;
	border:1px solid #CECECE
}
.dhx_cal_navline_ .dhx_cal_date_ {
	border:0;
	font-size:18px;
	font-weight:400;
	font-family:arial;
	width:100%;
	top:14px;
	text-align:center;
	position:absolute;
	left:0;
	z-index:-1
}
.dhx_cal_today_button {
	color:#747473;
	left:auto;
	right:123px;
	background:0 0;
	text-decoration:none;
	width:80px;
	font-size:12px;
	font-weight:700;
	font-family:arial;
	-webkit-border-radius:5px;
	-moz-border-radius:5px;
	border-radius:5px
}
.dhx_cal_next_button_,.dhx_cal_prev_button_ {
	left:auto;
	width:46px
}
.dhx_cal_prev_button_ {
	right:61px;
	background:url(imgs_dhx_terrace/arrow_left.png) center center no-repeat;
	-webkit-border-top-left-radius:5px;
	-webkit-border-bottom-left-radius:5px;
	-moz-border-radius-topleft:5px;
	-moz-border-radius-bottomleft:5px;
	border-top-left-radius:5px;
	border-bottom-left-radius:5px
}
.dhx_cal_next_button_ {
	right:14px;
	background:url(imgs_dhx_terrace/arrow_right.png) center center no-repeat;
	-webkit-border-top-right-radius:5px;
	-webkit-border-bottom-right-radius:5px;
	-moz-border-radius-topright:5px;
	-moz-border-radius-bottomright:5px;
	border-top-right-radius:5px;
	border-bottom-right-radius:5px
}
.dhx_cal_tab_ {
	color:#747473;
	width:60px;
	padding-top:0;
	text-decoration:none;
	-webkit-border-radius:0;
	-moz-border-radius:0;
	border-radius:0;
	font-weight:700;
	font-family:arial;
	font-size:12px
}
.dhx_cal_tab_.active {
	background-color:#F0EDE7;
	color:#454544;
	border:1px solid #CECECE;
	text-shadow:0 1px 0 #fff
}
.dhx_cal_tab__first {
	-webkit-border-top-left-radius:5px;
	-webkit-border-bottom-left-radius:5px;
	-moz-border-radius-topleft:5px;
	-moz-border-radius-bottomleft:5px;
	border-top-left-radius:5px;
	border-bottom-left-radius:5px
}
.dhx_cal_tab__last {
	-webkit-border-top-right-radius:5px;
	-webkit-border-bottom-right-radius:5px;
	-moz-border-radius-topright:5px;
	-moz-border-radius-bottomright:5px;
	border-top-right-radius:5px;
	border-bottom-right-radius:5px
}
.dhx_cal_tab__standalone {
	-webkit-border-radius:5px;
	-moz-border-radius:5px;
	border-radius:5px;
	padding:0 5px
}
.dhx_multi_day_,.dhx_multi_day_icon,.dhx_multi_day_icon_small {
	background-color:#fff
}
.dhx_multi_day_ {
	border-top:1px solid #CECECE
}
.dhx_multi_day_icon,.dhx_multi_day_icon_small {
	border-bottom:1px solid #CECECE;
	border-right:1px solid #CECECE
}
.dhx_multi_day_icon_small {
	background-image:url(imgs_dhx_terrace/clock_small.gif)
}
.dhx_multi_day_icon {
	background-image:url(imgs_dhx_terrace/clock_big.gif)
}
.dhx_after .dhx_month_body,.dhx_after .dhx_month_head,.dhx_before .dhx_month_body,.dhx_before .dhx_month_head,.dhx_month_head {
	background-color:#fff
}
.dhx_month_head {
	height:21px;
	padding-top:0;
	font:12px/21px Arial;
	color:#362d26;
	border-right:1px solid #CECECE
}
.dhx_after .dhx_month_head,.dhx_before .dhx_month_head {
	color:#bbb
}
.dhx_month_body {
	border-right:1px solid #CECECE;
	border-bottom:1px solid #CECECE
}
.dhx_now .dhx_month_body,.dhx_now .dhx_month_head {
	background-color:#FFF3A1;
	font-weight:400
}
.dhx_cal_event_clear {
	color:#0E64A0
}
.dhx_cal_larea {
	margin-left:0
}
.dhx_cal_light_wide .dhx_cal_larea {
	margin-left:3px
}
.dhx_cal_light_wide .dhx_wrap_section {
	padding:5px 0
}
.dhx_cal_larea,.dhx_cal_light,.dhx_cal_light_wide .dhx_wrap_section,.dhx_cal_lsection,.dhx_cal_ltext textarea,.dhx_wrap_section {
	background-color:#fff
}
.dhx_cal_light input,.dhx_cal_light_wide .dhx_cal_lsection .dhx_fullday,.dhx_cal_lsection,.dhx_cal_lsection .dhx_fullday {
	color:#747473
}
.dhx_cal_light_wide .dhx_wrap_section {
	border-top:0;
	border-bottom:1px solid #CECECE
}
.dhx_cal_larea {
	border:1px solid transparent
}
.dhx_cal_light,.dhx_cal_light select,.dhx_cal_ltext textarea {
	color:#2E2E2E
}
.dhx_cal_light {
	border:1px solid #CECECE
}
.dhx_cal_light_wide .dhx_cal_lsection,.dhx_cal_light_wide .dhx_cal_lsection .dhx_fullday {
	font-size:13px
}
.dhx_section_time {
	background-color:transparent
}
.dhx_btn_set div:first-child,.dhx_cancel_btn,.dhx_delete_btn,.dhx_save_btn {
	display:none
}
.dhx_btn_set,.dhx_btn_set div {
	height:30px;
	padding:0 20px;
	line-height:30px
}
.dhx_btn_set {
	margin:12px 0 0;
	padding:0;
	font-size:12px;
	color:#454544;
	font-weight:700;
	-webkit-border-radius:3px;
	-moz-border-radius:3px;
	border-radius:3px
}
.dhx_left_btn_set {
	margin-left:20px
}
.dhx_right_btn_set {
	margin-right:20px
}
.dhx_save_btn_set {
	border:1px solid #22A1BC;
	color:#fff;
	text-shadow:0 -1px 0 #6f6f6f;
	background-color:#22A1BC
}
.dhx_btn_set,.dhx_cancel_btn_set {
	border:1px solid #CECECE
}
.dhx_delete_btn_set {
	border:1px solid #FF8831;
	background-color:#FF8831;
	color:#fff;
	text-shadow:0 -1px 0 #93755f
}
.dhx_cal_ltitle {
	height:30px;
	line-height:30px;
	border-bottom:1px solid #CECECE
}
.dhx_cal_ltitle span {
	float:left
}
.dhx_cal_light .dhx_title {
	padding-left:13px
}
.dhx_mark {
	display:none
}
.dhx_time {
	padding-left:10px
}
.dhx_close_icon {
	float:right;
	width:9px;
	height:9px;
	background:url(imgs_dhx_terrace/close_icon.png) center center no-repeat;
	padding:10px;
	margin-top:1px
}
.dhx_cal_light_wide .dhx_cal_ltext.dhx_cal_template {
	line-height:22px
}
.dhx_cal_ltext textarea {
	line-height:20px;
	box-sizing:border-box;
	-moz-box-sizing:border-box;
	border:1px solid #CECECE;
	background-color:#F9F9F9
}
.dhtmlx_modal_box {
	background:#fff;
	width:330px
}
.dhtmlx_popup_controls {
	padding-bottom:9px
}
.dhtmlx_popup_button,.dhtmlx_popup_button div,.dhtmlx_popup_button div:active,.dhtmlx_popup_button:active {
	color:#444;
	background:#fff;
	box-shadow:none
}
.dhtmlx_popup_button.dhtmlx_ok_button {
	border:1px solid #22A1BC;
	background-color:#22A1BC
}
.dhtmlx_popup_button.dhtmlx_ok_button div {
	background:#22A1BC;
	border:1px solid #22A1BC;
	color:#fff;
	text-shadow:0 -1px 0 #6f6f6f
}
.dhx_cal_container_.dhx_mini_calendar {
	box-sizing:border-box;
	border:1px solid #CECECE;
	box-shadow:2px 2px 5px #CCC;
	border-radius:3px
}
.dhx_mini_calendar .dhx_year_month {
	border:1px solid #CECECE;
	font-family:Arial
}
.dhx_mini_calendar .dhx_month_body,.dhx_mini_calendar .dhx_month_head,.dhx_mini_calendar .dhx_scale_bar_,.dhx_mini_calendar .dhx_year_body,.dhx_mini_calendar .dhx_year_month {
	border-color:transparent
}
.dhx_mini_calendar .dhx_year_body {
	padding-top:1px
}
.dhx_mini_calendar .dhx_scale_bar_ {
	border-width:0
}
.dhx_mini_calendar .dhx_year_week {
	border-bottom:1px solid #CECECE;
	padding-top:1px
}
.dhx_mini_calendar .dhx_month_head {
	padding-right:0;
	text-align:center
}
.dhx_mini_calendar .dhx_cal_next_button_,.dhx_mini_calendar .dhx_cal_prev_button_ {
	border:0;
	height:20px
}
.dhx_cal_navline_ div.dhx_minical_icon {
	left:210px;
	top:14px;
	width:30px;
	height:30px;
	background:url(imgs_dhx_terrace/calendar.gif) 3px 5px no-repeat
}
.dhx_cal_event_line .dhx_event_resize {
	background:url(imgs_dhx_terrace/resize_dots.png) repeat-y
}
.dhx_matrix_cell,.dhx_matrix_scell {
	border-bottom:1px solid #CECECE;
	border-right:1px solid #CECECE
}
.dhx_cal_header_ div div {
	border-left:1px solid #CECECE
}
.dhx_matrix_scell.folder {
	border-right:0
}
.dhx_second_scale_bar {
	border-bottom:1px solid #CECECE
}
.dhx_repeat_divider {
	border-left:1px solid #CECECE
}
.dhx_custom_button {
	background-color:#fff;
	border:1px solid #CECECE;
	color:#747473
}
.dhx_cal_light_wide .dhx_custom_button {
	margin-top:6px
}
.dhx_custom_button_recurring {
	background-image:url(imgs_dhx_terrace/but_repeat.gif)
}
.dhx_agenda_line div,.dhx_v_border {
	border-right:1px solid #CECECE
}
.dhx_year_month {
	border:1px solid #CECECE
}
.dhx_scale_bar_last {
	border-right:1px solid #CECECE
}
.dhx_year_body {
	border-left:1px solid #CECECE
}
.dhx_expand_icon {
	top:-3px
}
.dhx_scale_bar_ .dhx_cal_next_button_,.dhx_scale_bar_ .dhx_cal_prev_button_ {
	width:20px;
	height:20px;
	top:0!important;
	border:0
}
.dhx_scale_bar_ .dhx_cal_next_button_ {
	right:1px!important;
	border-left:1px solid #CECECE
}
.dhx_scale_bar_ .dhx_cal_prev_button_ {
	left:1px!important;
	border-right:1px solid #CECECE
}
.dhx_map_line .headline_date,.dhx_map_line .headline_description {
	border:0
}
.dhx_map_line .headline_date {
	border-right:1px solid #CECECE
}
.dhtmlXTooltip.tooltip {
	border-left:1px solid #CECECE;
	border-top:1px solid #CECECE;
	color:#747473;
	font-size:12px;
	line-height:16px
}
.dhx_wa_scale_bar {
	border-top:1px solid #CECECE;
	border-bottom:1px solid #CECECE
}
.dhx_wa_column_last .dhx_wa_day_cont {
	border-left:1px solid #CECECE
}
.dhx_wa_ev_body {
	border-bottom:1px solid #CECECE
}
.dhx_wa_scale_bar {
	background-color:#f0ede7
}
.dhx_wa_ev_body.dhx_cal_event_selected {
	background-color:#fff3a1;
	color:#362d26
}
.dhx_wa_dnd {
	background-color:#fddb93!important;
	color:#747473!important;
	border:1px solid #ccb177
}
.dhx_text_disabled {
	color:#2E2E2E
}
.dhx_cal_ltext .dhx_text_disabled {
	line-height:22px
}
.dhx_grid_v_border {
	border-right-color:#CECECE
}
.dhx_month_body_border,.dhx_month_head_border,.dhx_scale_bar_border,.dhx_scale_hour_border {
	border-left:1px solid #CECECE
}
.dhx_cal_quick_info {
	background:rgba(50,50,50,.5)
}
.dhx_qi_big_icon {
	background:#1796b0;
	color:#fff
}
.dhx_cal_navline_ .dhx_cal_export {
	width:32px;
	height:32px;
	margin:2px;
	cursor:pointer;
	top:12px
}
.dhx_cal_navline_ .dhx_cal_export.pdf {
	left:auto;
	right:249px;
	background-image:url(imgs_dhx_terrace/export_pdf.png)
}
.dhx_cal_navline_ .dhx_cal_export.ical {
	left:auto;
	right:210px;
	background-image:url(imgs_dhx_terrace/export_ical.png)
}
.dhx_mini_calendar {
	padding:5px
}
.dhx_mini_calendar .dhx_calendar_click,.dhx_mini_calendar .dhx_year_event {
	border-radius:7px
}
.dhx_mini_calendar .dhx_month_head {
	margin:2px
}
.dhx_mini_calendar .dhx_year_month {
	line-height:20px;
	height:25px;
	font-size:14px
}
.dhx_mini_calendar .dhx_cal_next_button_,.dhx_mini_calendar .dhx_cal_prev_button_ {
	top:8px!important
}

</style>
<asp:UpdatePanel runat="server" ID="upPnlCertificateApp">
    <ContentTemplate>
        <div>
            <div>
                <div class="divNewApplicationAddu">
                    <span style="float: left; margin-right: 10px;">
                        <h4>Hearing Waiting Room</h4>
                    </span>
                    <span style="float: right; margin-right: 10px;">
                        <asp:LinkButton ID="LinkButton1" CssClass="hyperlink" Visible="false" runat="server" OnClick="backCalender_Click">Return to Hearing Waiting Room Calendar</asp:LinkButton>
                    </span>
                </div>
            </div>
            <div class="clear">
            </div>
            
            <div class=" ">
                <script type="text/javascript">
                    function ShowDayView() {
                        document.getElementById('<%=Calendar1.ClientID %>').style.visibility = "hidden";
                        document.getElementById("divWeekView").style.display = "none";
                        document.getElementById("divDayView").style.display = "block";
                    };

                    function ShowWeekView() {
                        document.getElementById('<%=Calendar1.ClientID %>').style.visibility = "hidden";
            document.getElementById("divWeekView").style.display = "block";
            document.getElementById("divDayView").style.display = "none";
        };

        function ShowMonthView() {
            document.getElementById('<%=Calendar1.ClientID %>').style.visibility = "visible";
            document.getElementById("divWeekView").style.display = "none";
            document.getElementById("divDayView").style.display = "none";
            //PageMethods.BindDates();
            //alert("called");
        };

        function divshowhide5() {
            document.getElementById("newtaskname").style.display = "Block";
            document.getElementById("newtaskcontent").style.display = "block";
            document.getElementById("Canlender_box").style.display = "none";
            document.getElementById("programmaticPopup").style.display = "none";
        }

        function divShowCalendarHideSchedule() {
            document.getElementById("newtaskname").style.display = "none";
            document.getElementById("Canlender_box").style.display = "Block";
            document.getElementById("programmaticPopup").style.display = "none";
        }


    </script>
                <div id="scheduler_here" runat="server" class="dhx_cal_container_ dhx_scheduler_week_" style="width:100%;height:50px;">
                                               
                                                                    <div class="dhx_cal_navline_" style="width: 960px; height: 59px; left: 0px; top: 0px;">
                                                   
                                                                        <ul class="buttons-group inbox_composebtnset" style="margin-top: 0px;">
                                                                            <li class="button stay-in-engagement" runat="server" id="btnDayView" style="left: 136px; right: auto;"><a onclick="ShowDayView();" style="padding-left:15px; padding-right:15px;">Day</a></li>
                                                                            <li class="button" runat="server" id="btnWeekView" style="left: 75px; right: auto;"><a  onclick="ShowWeekView();" class="focus-on-message-box" style="padding-left:15px; padding-right:15px;">Week</a></li>
                                                                            <li class="button" runat="server" id="btnMonthView" style="left: 14px; right: auto;"><a onclick="ShowMonthView();" class="focus-on-message-box" style="padding-left:15px; padding-right:15px;">Month</a></li>
                                                                        </ul>

                                                                        <div class="dhx_cal_tab_ dhx_cal_tab_last" name="month_tab" style="left: 136px; right: auto; display:none;" >Month</div>
                                                                        <div class="dhx_cal_tab_ active" name="week_tab" style="left: 75px; right: auto;display:none;">Week</div>
                                                                        <div class="dhx_cal_tab_ dhx_cal_tab_first" name="day_tab" style="left: 14px; right: auto;display:none;">Day</div>
                                                                    </div>

                                                                </div>
                

                                                                    <div id="divWeekView" style="display: none; position: relative;">
					                                                    <%--<div class="dhx_cal_prev_button_">&nbsp;</div>
							                                            <div class="dhx_cal_next_button_">&nbsp;</div>
							                                            <div class="dhx_cal_today_button">Today</div>--%>
							                                            
                                                                        <table>
                                                                            <tr>
                                                                                <td class="calnedr_nextprvsbtn" style="background-color:White;width:15%;">
                                                                                    <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$calEvent','V5569')" 
                                                                                        style="color:white;  display:none;" title="Go to the previous month">&lt;
                                                                                    </a>
                                                                                </td>
                                                                                <td align="center" style="width:70%;">
                                                                                    <%--<asp:Label ID="lblWeek" runat="server" Text="11 May 2015 – 17 May 2015"></asp:Label>--%>
                                                                                </td>
                                                                                <td class="calnedr_nextprvsbtn" align="right" style="background-color:White;width:15%;">
                                                                                    <a href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$calEvent','V5630')" 
                                                                                        style="color:Black;display:none;" title="Go to the next month">&gt;
                                                                                    </a>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                         <div id="divNameWeek" class="dhx_cal_date_" style="margin-top: -14px; text-align: center; border: 0;
                                                                            font-weight: bold; font-family: Helvetica Neue,Helvetica,Arial,sans-serif; padding-top: 20px"> 
                                                                            <%--<asp:Label ID="lblWeek" runat="server" Text="11 May 2015 – 17 May 2015"></asp:Label>--%>
                                                                         </div> 
                                                                        
                                                                        <div class="dhx_cal_header_" style="width: 892px; height: 20px; left: 50px; top: 60px;">
                                                                            <div class="dhx_scale_bar_" style="width: 126px; height: 18px; left: 0px; top: 0px;">
                                                                                <asp:Label ID="lblMon" runat="server" Text="Mon"></asp:Label>
                                                                            </div>
                                                                            <div class="dhx_scale_bar_" style="width: 126px; height: 18px; left: 127px; top: 0px;">
                                                                                <asp:Label ID="lblTue" runat="server" Text="Tue"></asp:Label>
                                                                            </div>
                                                                            <div class="dhx_scale_bar_" style="width: 126px; height: 18px; left: 254px; top: 0px;">
                                                                                <asp:Label ID="lblWed" runat="server" Text="Wed"></asp:Label>
                                                                            </div>
                                                                            <div class="dhx_scale_bar_" style="width: 126px; height: 18px; left: 381px; top: 0px;">
                                                                                <asp:Label ID="lblThu" runat="server" Text="Thu"></asp:Label>
                                                                            </div>
                                                                            <div class="dhx_scale_bar_" style="width: 127px; height: 18px; left: 508px; top: 0px;">
                                                                                <asp:Label ID="lblFri" runat="server" Text="Fri"></asp:Label>
                                                                            </div>
                                                                            <div class="dhx_scale_bar_" style="width: 127px; height: 18px; left: 636px; top: 0px;">
                                                                                <asp:Label ID="lblSat" runat="server" Text="Sat"></asp:Label>
                                                                            </div>
                                                                            <div class="dhx_scale_bar_" style="width: 127px; height: 18px; left: 764px; top: 0px;">
                                                                                <asp:Label ID="lblSun" runat="server" Text="Sun"></asp:Label>
                                                                            </div>
                                                                        </div>
					                                                    
                                                                        <div class="dhx_cal_data_" style="width: 960px; height: 485px; left: 0px; top: 81px; cursor: default;">
                                                                            <div class="dhx_scale_holder_ " style="width: 126px; height: 484px; left: 51px; top: 0px;"></div>
                                                                            <div class="dhx_scale_holder_ " style="width: 126px; height: 484px; left: 178px; top: 0px;"></div>
                                                                            <div class="dhx_scale_holder_ " style="width: 126px; height: 484px; left: 305px; top: 0px;"></div>
                                                                            <div class="dhx_scale_holder_ " style="width: 126px; height: 484px; left: 432px; top: 0px;">
                                                                                <%--<div style="background-color: Tomato ; display:none; border-radius: 10px; color: white; 
                                                                                    padding: 2px 8px; font-size: 12px; margin-bottom: 3px; margin-top: 3px; 
                                                                                    height:40px; vertical-align:middle;">
                                                                                    Test Event
                                                                                </div>--%>
                                                                            </div>
                                                                            <div class="dhx_scale_holder_ " style="width: 127px; height: 484px; left: 559px; top: 0px;">
                                                                                <%--<div style="background-color: Tomato ; border-radius: 10px; color: white; 
                                                                                    padding: 2px 8px; font-size: 12px; margin-bottom: 3px; margin-top: 3px; 
                                                                                    height:40px; vertical-align:middle;">
                                                                                    Test Event
                                                                                </div>--%>
                                                                            </div>
                                                                            <div class="dhx_scale_holder_ " style="width: 127px; height: 484px; left: 687px; top: 0px;">
                                                                                <%--<div style="background-color: Tomato ; border-radius: 10px; color: white; 
                                                                                    padding: 2px 8px; font-size: 12px; margin-bottom: 3px; margin-top: 3px; 
                                                                                    height:40px; vertical-align:middle;">
                                                                                    Test Event
                                                                                </div>--%>
                                                                            </div>
                                                                            <div class="dhx_scale_holder_ " style="width: 127px; height: 484px; left: 815px; top: 0px;">
                                                                                <%--<div style="background-color: Tomato ; border-radius: 10px; color: white; 
                                                                                    padding: 2px 8px; font-size: 12px; margin-bottom: 3px; margin-top: 3px; 
                                                                                    height:40px; vertical-align:middle;">
                                                                                    Test Event
                                                                                </div>--%>
                                                                            </div>
                                                                            <div class="dhx_scale_holder_">
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">08:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">09:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">10:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">11:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">12:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">13:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">14:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">15:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">16:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">17:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">18:00</div>
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <br />

                                                                    <div id="divDayView" style="display:none; position: relative; ">
                                                                    
                                                                        <%--<div class="dhx_cal_prev_button_">&nbsp;</div>
							                                            <div class="dhx_cal_next_button_">&nbsp;</div>
							                                            <div class="dhx_cal_today_button">Today</div>--%>
							                                            
                                                                        <div id="divNameDay" class="dhx_cal_date_" style="margin-top: -14px; text-align: center; border: 0;
                                                                            font-weight: bold; font-family: Helvetica Neue,Helvetica,Arial,sans-serif; padding-top: 20px"> 
                                                                            <asp:Label ID="lblDay" runat="server" Text="11 May 2015"></asp:Label>
                                                                         </div> 
                                                                        						
					                                                    <div class="dhx_cal_header_" style="width: 892px; height: 20px; left: 50px; top: 60px;">
                                                                            <%--<div id="dateNameDay" runat="server" class="dhx_scale_bar_" style="width: 891px; height: 18px; left: 0px; top: 0px;">
                                                                                23 Apr 2015
                                                                            </div>--%>

                                                                            <div id="dateNameDay" class="dhx_scale_bar_" style="width: 891px; height: 18px; left: 0px; top: 0px;">
                                                                                <asp:Label ID="lblDay1" runat="server" Text="11 May 2015"></asp:Label>
                                                                            </div>
                                                                        </div>
					                                                    <div class="dhx_multi_day_" style="visibility: hidden; width: 960px; height: 0px; left: 0px; top: 81px;">
                                                                            <div class="dhx_multi_day_icon" style="visibility: hidden; width: 50px; height: 0px; left: 0px; top: 81px;">
                                                                            </div>
                                                                        </div>
                                                                        <div class="dhx_cal_data_" style="width: 960px; height: 485px; left: 0px; top: 81px;">
                                                                            <div class="dhx_scale_holder_ " style="width: 891px; height: 484px; left: 51px; top: 0px;"></div>
                                                                            <div class="dhx_scale_holder_">
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">08:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">09:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">10:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">11:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">12:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">13:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">14:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">15:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">16:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">17:00</div>
                                                                                <div class="dhx_scale_hour_" style="height: 43px; width: 50px;">18:00</div>
                                                                            </div>
                                                                        </div>

				                                                    </div>
			
              
                
                  <div id="divCalenderpnl"  runat="server">
                    <asp:Calendar ID="Calendar1" Width="100%" runat="server" CssClass="CallListCalender" OnDayRender="calEvent_DayRender"
                        SelectionMode="Day"
                        ShowGridLines="True"
                        DayNameFormat="FirstLetter" 
    NextMonthText="Next Month"   
    PrevMonthText="Previous Month"     
    SelectWeekText="›"
                        OnSelectionChanged="Selection_Change">
                        <OtherMonthDayStyle ForeColor="Gray" />   
    <DayStyle CssClass="CallListCalender" /> 
                        <SelectorStyle CssClass="CallListCalender" />  
  
    <NextPrevStyle CssClass="CallListCalenderPre" />  
  
    <TitleStyle CssClass="CallListCalendertitle" />
                        <TodayDayStyle BackColor="#198D60" ForeColor="White" />
                        <SelectedDayStyle BackColor="Yellow"
                            ForeColor="Red"></SelectedDayStyle>
                    </asp:Calendar>
                </div>
            </div>
            <div class="clear">
            </div>
            
            <asp:Literal ID="ltrMainMessage" runat="server"></asp:Literal>
            <div class="gvDivUpr" id="divCallList" runat="server" visible="false" style="margin-top: 10px;">
                <div style="margin-top: 20px; margin-bottom: 20px; margin-left: 2px;">
<table>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Date : &nbsp; "></asp:Label></td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>Select</asp:ListItem>
            </asp:DropDownList></td>
    </tr>
</table>
            </div>
                <table class="index  grid" cellspacing="0" cellpadding="5" id="gvNewApplication"
                    style="color: #333333; width: 100%; border-collapse: collapse;">
                    <tbody>
                        <tr>
                            <th>
                                <asp:CheckBox ID="chkSelectAll" AutoPostBack="true" OnCheckedChanged="chkSelectAll_CheckedChanged" runat="server" /></th>
                            <th scope="col" style="text-decoration: underline;text-align:center;">
                                <a href="javascript:void();" style="color: #fff;"></a>
                            </th>
                            <th scope="col" style="text-decoration: underline;text-align:center;">
                                <a href="javascript:void();" style="color: #fff;">ID #</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;text-align:center;">
                                <a href="javascript:void();" style="color: #fff;">Certificate #</a>
                            </th>

                            <th scope="col" style="text-decoration: underline;text-align:center;">
                                <a href="javascript:void();" style="color: #fff;">First Name</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;text-align:center;">
                                <a href="javascript:void();" style="color: #fff;">Last Name</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;text-align:center;">
                                <a href="javascript:void();" style="color: #fff;">Attorney/Representative Name</a>
                            </th>

                            <th scope="col" style="text-decoration: underline;text-align:center;">
                                <a href="javascript:void();" style="color: #fff;">Type of Hearing</a>
                            </th>
                             <th scope="col" style="text-decoration: underline;text-align:center;">
                                <a href="javascript:void();" style="color: #fff;">Hearing Date</a>
                            </th>
                            <th scope="col" style="text-decoration: underline;text-align:center;">Pass Code</th>
                             <th scope="col" style="text-decoration: underline;text-align:center;">Action</th>
                        </tr>
                        <tr id="trGridRowStatus1" runat="server">
                            <td>
                                <asp:CheckBox ID="chkCart1" runat="server" /></td>
                            <td class="col-action" style="width: 60px; text-align:center;"> 
                                <input type="image" name="ctl00$ContentPlaceHolder1$ucTask1$gvTask$ctl02$ImageButton1"
                                                                            id="ImageButton1" title="NOT PAID" class="imgDelete" rowindex="0" src="../../App_Themes/Theme1/images/notpaid.png"></td>
                            <td style="text-align:center;">CAMTC00123
                            </td>
                            <td style="text-align:center;">101
                            </td>
                            <td style="text-align:center;">Nancy
                            </td>
                            <td style="text-align:center;">Blachly
                            </td>
                            <td style="text-align:center;">Test1
                            </td>
                            <td style="text-align:center;">
                                Proposed Discipline
                            </td>
                            <td style="text-align:center;"> 
                                <asp:TextBox ID="TextBox20" CssClass="inputTextbox calender" Width="80px" placeholder="MM/DD/YYYY" runat="server"></asp:TextBox>
                                </td>
                            <td style="text-align:center;">
                                <asp:TextBox ID="TextBox2" Width="70px" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:Button ID="btnmove1" runat="server" OnClick="btnmove1_Click" CssClass="buttonGreen medium" Text="Move" />

                            </td>
                        </tr>
                        <tr id="trStatus1" runat="server" visible="false">
                            <td colspan="11" style="padding: 0px;">
                                <div class="clear">
                                </div>
                                <div class="toolBar">
                                    <table style="width: 100%; table-layout: fixed;">
                                        <tr>
                                            <td style="width: 145px; font-weight: bold; padding: 0px; text-align: center;">CAMTC00123
                                            </td>
                                            <td style="width: 80px; font-weight: bold; padding: 0px 3px;">101
                                            </td>
                                            <td style="width: 80px; font-weight: bold; padding: 0px;">Nancy
                                            </td>
                                            <td style="width: 83px; font-weight: bold; padding: 0px;">Blachly
                                            </td>
                                            <td style="width: 138px; font-weight: bold; padding: 0px;">
                                            </td>
                                            <td style="width: 101px; font-weight: bold; padding: 0px;">Proposed Discipline
                                            </td>
                                            <td></td>
                                            <td align="center" valign="middle" style="width: 66px;"></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="clear">
                                </div>
                                <div id="divStatus1" runat="server">
                                    <div style="margin-top: 10px;">
                                        <div>
                                            <table class="form-table" style="width: 67%; margin: 0 auto;">
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="TextBox36" Style="width: 692px !important;" CssClass="inputTextBox"
                                                            TextMode="MultiLine" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="toolBar" style="padding: 4px;" runat="server" id="PnalApprovebtn">
                                        <span class="fltrt"><span class="AfterApproved">
                                            <asp:Button ID="btnPsdStatus1Update" ValidationGroup="vgAffidavit" CssClass="buttonGreen medium"
                                                runat="server" Text="Save" CausesValidation="true"  /></span>
                                            <asp:LinkButton ID="lnkcalceldate1" OnClick="lnkcalceldate1_Click" CssClass="secondary medium bottom buttonalignment"
                                                runat="server" >Cancel</asp:LinkButton></span>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="chkCart2" runat="server" /></td>
                            <td class="col-action" style="width: 60px; text-align:center;"> 
                                <input type="image" name="ctl00$ContentPlaceHolder1$ucTask1$gvTask$ctl02$ImageButton1"
                                                                            id="ImageButton2" title="Oral Hearing PAID" class="imgDelete" rowindex="0" src="../../App_Themes/Theme1/images/OH.png"></td>
                            <td style="text-align:center;">CAMTC00212
                            </td>
                            <td style="text-align:center;">250
                            </td>
                            <td style="text-align:center;">David
                            </td>
                            <td style="text-align:center;">Hook
                            </td>
                            <td style="text-align:center;">Test2
                            </td>
                            <td style="text-align:center;">Proposed Revocation</td>
                           
                            <td style="text-align:center;">
                                <asp:TextBox ID="TextBox1" CssClass="inputTextbox calender" Width="80px" placeholder="MM/DD/YYYY" runat="server"></asp:TextBox>
                                </td>
                            <td style="text-align:center;"><asp:TextBox ID="TextBox3" Width="70px" runat="server"></asp:TextBox></td>
                            <td><asp:Button ID="btnmove2" runat="server" OnClick="btnmove2_Click" CssClass="buttonGreen medium" Text="Move" /></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br />
            <div class="toolBar">
                <p style="text-align: center;">
                    Schedule Hearing : &nbsp;
                    <asp:TextBox ID="txtReHEaring" CssClass="calender" placeholder="MM/DD/YYYY" runat="server"></asp:TextBox>
                   &nbsp; &nbsp; Pass Code : &nbsp; &nbsp;
                    <asp:TextBox ID="txtfootermove1" Width="60px" runat="server"></asp:TextBox>
                    
                    <asp:Button ID="btnfootermove" OnClick="btnfootermove_Click" class="buttonGreen medium" runat="server" Text="Move" />
                </p>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
<!-- Autocomplete Script -->
<script src="../../Ajax_Handler/autocomplete.js" type="text/javascript"></script>
<script>

    // Sets up the multicolumn autocomplete widget.
    $("#txtSearchByName").mcautocomplete({
        // These next two options are what this plugin adds to the autocomplete widget.
        showHeader: true,
        columns: [{
            name: 'Certification#',
            width: '150px',
            valueField: 'Certification_Number'
        }, {
            name: 'First Name',
            width: '120px',
            valueField: 'First_Name'
        }, {
            name: 'Last Name',
            width: '120px',
            valueField: 'Last_Name'
        }],

        // Event handler for when a list item is selected.
        select: function (event, ui) {
            this.value = (ui.item ? ui.item.First_Name + ' ' + ui.item.Last_Name : '');
            $('#txtLicenseNumberSearch').val(ui.item ? ui.item.Certification_Number : '');
            $('#txtFirstNameSearch').val(ui.item ? ui.item.First_Name : '');
            $('#txtlastNameSaerch').val(ui.item ? ui.item.Last_Name : '');
            //alert('done');

            //$('#results').text(ui.item ? 'Selected : ' + ui.item.name + ', ' + ui.item.adminName1 + ', ' + ui.item.countryName  : 'Nothing selected, input was ' + this.value);
            return false;
        },

        // The rest of the options are for configuring the ajax webservice call.
        minLength: 1,
        source: function (request, response) {
            $.ajax({
                url: '../../Ajax_Handler/IndividualSearch.ashx',
                dataType: 'json',
                // The success event handler will display "No match found" if no items are returned.
                success: function (data) {
                    var result;
                    //alert(data);
                    result = data.SearchResult;
                    //alert(result);
                    //                        if (!data || data.length === 0 || !data.geonames || data.geonames.length === 0) {
                    //                            result = [{
                    //                                label : 'No match found.'
                    //                            }];
                    //                        } else {
                    //                            result = data.geonames;
                    //                        }
                    response(result);
                }
            });
        }
    });

</script>