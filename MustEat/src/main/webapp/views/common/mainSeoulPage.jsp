<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery Script -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<!-- Maphighlight Script -->

<style>
 	.map-area{
 		background-color:#e4f2fd;
 	}
 	.map-name>h2{
 		font-size:50px;
 	}
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

	<div class="map-area" align="center">
	
	
		<div align="center" class="map-name">
			<br><br>
			<h2>SEOUL</h2>
		</div>

		<!-- 서울 지도 페이지! -->
		<img src="../../resources/image/서울.png" usemap="#image-map" class="seoul-area">
		
		<map name="image-map">
		    <area target="_blank" alt="강동구 맛집" title="강동구 맛집" href="#" coords="980,706,967,702,960,696,943,695,934,675,920,664,926,649,929,634,928,626,925,620,919,621,910,613,912,594,918,576,927,566,936,557,949,551,963,539,975,539,989,539,1000,539,1012,531,1028,522,1056,507,1057,522,1064,527,1076,530,1077,539,1079,552,1072,569,1076,579,1076,592,1079,603,1078,614,1070,620,1055,625,1041,630,1028,634,1004,641,1002,656,1002,669,994,676,981,681,959,686" shape="poly">
		    <area target="_blank" alt="송파구 맛집" title="송파구 맛집" href="#" coords="906,617,914,623,922,623,926,631,925,640,921,654,917,665,926,673,931,676,936,687,940,699,958,700,964,706,976,709,970,720,961,737,961,743,968,747,968,761,976,767,992,771,1009,779,1020,780,1020,789,1013,793,1005,800,1001,816,998,829,992,840,977,846,971,858,970,870,964,876,959,880,947,878,940,885,932,899,918,875,907,859,903,837,901,827,890,820,877,813,872,803,866,794,859,791,850,789,839,788,824,783,809,775,799,768,790,757,784,746,783,730,783,714,783,697,796,700,810,699,821,699,837,697,848,694,853,691,859,685,872,669,884,656,895,643,901,630" shape="poly">
		    <area target="_blank" alt="강남구 맛집" title="강남구 맛집" href="#" coords="635,682,652,667,671,663,700,664,720,672,734,679,751,690,762,695,780,698,780,717,781,736,782,747,788,760,799,772,810,779,823,787,834,791,845,791,857,793,866,799,870,807,881,819,896,829,900,843,902,855,906,864,912,875,920,887,928,901,912,904,904,915,896,922,879,925,872,928,860,930,853,921,843,912,829,898,828,887,828,878,820,871,812,868,798,868,783,872,777,877,772,887,765,891,753,892,744,895,735,898,730,885,724,871,721,858,719,846,711,835,699,827,689,822,678,811,672,800,671,783,669,760,656,746,653,723,652,715,645,701" shape="poly">
		    <area target="_blank" alt="서초구 맛집" title="서초구 맛집" href="#" coords="769,893,776,883,782,876,796,872,809,872,821,879,822,898,827,907,840,916,852,930,839,935,834,942,832,955,830,960,817,963,811,975,804,980,792,982,784,984,776,987,771,1005,768,1017,756,1018,740,1015,728,1011,717,1003,697,992,698,973,693,958,689,944,689,922,688,903,664,897,654,905,641,911,634,919,624,931,611,930,608,922,608,912,601,903,591,903,584,910,576,899,568,883,560,869,560,853,556,840,558,822,560,803,566,785,556,762,537,759,534,747,546,747,562,746,572,745,583,738,591,730,604,718,618,704,632,690,644,710,649,721,651,746,664,763,667,782,668,800,677,818,684,826,696,831,707,840,715,849,717,860,720,876,724,887,732,904,750,897" shape="poly">
		    <area target="_blank" alt="동작구 맛집" title="동작구 맛집" href="#" coords="531,748,535,763,551,765,556,772,563,784,560,795,558,808,556,822,553,838,557,855,548,860,531,862,520,854,510,846,504,829,498,806,476,795,458,794,444,795,432,794,409,795,402,808,393,812,379,814,358,825,358,816,359,808,369,799,381,796,394,791,399,781,403,766,404,751,408,742,416,723,426,708,439,710,452,710,478,709,487,721,497,734,506,742,517,746" shape="poly">
		    <area target="_blank" alt="관악구 맛집" title="관악구 맛집" href="#" coords="555,859,556,872,562,887,571,903,579,917,571,919,558,931,543,945,522,967,493,983,484,991,461,991,440,991,429,989,421,983,416,973,413,963,399,959,402,953,398,944,396,937,387,936,380,927,376,917,376,905,374,890,372,878,372,862,372,844,362,840,356,831,377,818,388,818,402,814,410,799,427,799,444,800,468,799,491,807,497,821,500,835,504,847,512,852,520,860,526,863,536,864,544,863" shape="poly">
		    <area target="_blank" alt="금천구 맛집" title="금천구 맛집" href="#" coords="370,851,370,871,373,894,374,910,377,925,381,935,386,942,392,944,399,949,399,959,389,966,383,971,377,990,357,999,332,997,315,938,308,905,295,900,292,883,273,835,296,835,312,835,330,825,343,835,352,834,362,842" shape="poly">
		    <area target="_blank" alt="양천구 맛집" title="양천구 맛집" href="#" coords="286,598,294,618,303,634,305,650,299,657,285,669,282,677,283,697,283,716,279,726,271,742,260,743,250,744,237,740,232,727,229,721,208,720,200,727,183,742,161,742,156,730,131,727,134,720,139,710,141,685,142,632,132,616,140,604,153,601,161,608,165,621,171,633,178,649,187,654,196,657,212,660,228,654,236,650,248,630,249,607,256,594,268,598,275,598" shape="poly">
		    <area target="_blank" alt="구로구 맛집" title="구로구 맛집" href="#" coords="287,722,302,731,310,738,313,747,316,759,318,774,324,784,324,802,325,821,319,824,312,831,268,832,265,812,255,804,247,799,236,803,224,813,221,828,213,839,193,859,180,874,172,875,156,873,144,870,124,875,109,874,112,867,105,860,116,847,125,838,129,829,125,816,115,795,124,776,130,761,136,743,143,736,152,736,155,747,169,748,183,747,192,739,201,731,208,723,218,727,226,724,231,734,234,743,241,747,251,750,257,747,271,748,277,745,280,735" shape="poly">
		    <area target="_blank" alt="강서구 맛집" title="강서구 맛집" href="#" coords="244,629,239,634,235,646,228,650,220,654,212,657,199,654,184,650,179,642,175,634,170,623,164,608,156,600,147,600,138,600,133,608,128,614,116,613,96,613,88,612,73,627,67,634,60,622,56,611,52,606,44,604,28,598,8,590,7,581,4,572,0,564,12,556,16,536,20,519,24,514,35,511,42,507,49,503,53,485,55,468,62,461,69,454,75,448,76,435,76,425,73,414,72,403,79,391,90,398,100,403,114,413,130,429,140,441,146,448,162,462,176,483,192,492,207,501,218,506,226,516,232,523,239,534,241,542,249,550,260,558,270,567,277,574,283,578,286,593,278,594,271,594,262,592,255,589,248,602,245,614,244,620" shape="poly">
		    <area target="_blank" alt="영등포구 맛집" title="영등포구 맛집" href="#" coords="391,788,383,791,372,794,364,798,356,804,353,811,352,823,347,830,338,825,329,819,328,806,328,794,326,782,321,774,319,763,315,750,312,736,302,728,287,719,288,703,288,688,288,672,300,661,310,653,310,636,304,626,298,614,292,599,288,581,298,589,309,598,323,608,341,618,356,626,368,630,386,636,399,643,416,652,428,659,441,669,450,677,461,688,468,698,476,706,464,706,450,706,439,707,427,704,420,713,414,723,408,735,404,745,400,761,399,770,396,780" shape="poly">
			<area target="_blank" alt="용산구 맛집" title="용산구 맛집" href="#" coords="518,591,578,589,590,600,619,601,635,611,644,646,569,720,522,720,509,706,496,688,484,676,467,662,510,613" shape="poly">
		    <area target="_blank" alt="마포구 맛집" title="마포구 맛집" href="#" coords="270,471,286,454,290,444,298,435,307,447,315,451,324,461,341,475,381,511,399,528,433,560,475,565,489,565,501,559,509,581,503,610,479,642,458,660,430,637,392,620,349,601,322,586,266,540,250,509,227,488,246,473" shape="poly">
		    <area target="_blank" alt="성동구 맛집" title="성동구 맛집" href="#" coords="670,553,673,542,673,532,674,522,679,526,685,529,694,529,701,520,712,520,723,521,734,522,736,530,739,536,745,541,756,545,767,549,778,554,788,558,801,560,799,571,797,585,793,599,787,610,780,622,772,629,771,636,771,644,768,652,764,668,754,663,744,656,734,650,724,647,711,642,699,639,687,639,677,638,668,638,659,639,647,642,643,634,640,625,638,614,636,607,639,595,650,576,660,568" shape="poly">
		    <area target="_blank" alt="광진구 맛집" title="광진구 맛집" href="#" coords="769,673,770,665,773,656,774,647,775,638,780,632,785,626,790,620,794,612,796,602,798,593,801,584,803,575,805,566,809,557,812,548,815,539,821,524,826,525,835,524,850,524,863,518,871,515,882,514,882,525,874,538,875,546,879,557,883,574,902,575,899,588,896,602,888,623,879,635,868,649,860,659,853,668,842,680,826,681,814,682,803,682,788,680,775,676" shape="poly">
		    <area target="_blank" alt="중구 맛집" title="중구 맛집" href="#" coords="516,582,515,569,505,557,509,553,515,548,522,544,525,536,536,533,546,530,555,526,565,521,573,525,578,531,589,532,600,533,613,529,624,529,634,526,646,526,656,525,667,525,666,536,666,545,661,558,652,567,645,578,638,589,632,603,620,592,606,594,589,593,577,582,561,580" shape="poly">
		    <area target="_blank" alt="서대문구 맛집" title="서대문구 맛집" href="#" coords="365,488,367,471,377,463,380,454,420,454,431,436,456,425,461,408,468,401,477,395,485,397,487,416,499,422,507,448,492,496,493,504,497,512,506,521,519,536,511,544,500,551,485,561,472,560,453,558,436,555" shape="poly">
		    <area target="_blank" alt="은평구 맛집" title="은평구 맛집" href="#" coords="323,456,320,449,312,446,308,439,326,443,341,443,353,431,360,422,364,411,364,337,372,326,379,241,395,241,415,242,426,231,438,230,450,231,463,217,469,205,481,213,494,224,507,235,520,247,520,265,520,281,513,293,508,305,500,316,492,325,489,338,488,352,488,366,488,379,488,393,477,393,466,400,460,405,455,422,432,435,419,454,380,453,374,461,364,471,362,485" shape="poly">
		    <area target="_blank" alt="종로구 맛집" title="종로구 맛집" href="#" coords="521,530,513,522,502,512,497,498,499,486,503,473,507,459,510,446,507,431,505,419,491,410,490,398,490,387,491,375,491,364,490,353,491,345,492,334,493,324,500,317,508,307,513,297,519,292,525,292,533,291,542,288,546,293,548,300,556,302,561,316,564,331,568,345,573,358,577,370,580,381,581,390,572,402,561,408,559,418,561,425,566,429,575,433,584,434,592,436,601,438,609,441,613,448,617,456,621,465,625,472,628,480,632,486,635,494,646,499,653,498,660,499,670,501,671,509,671,520,657,522,643,522,627,523,610,525,594,529,582,528,573,520,567,514,551,523,536,529" shape="poly">
		    <area target="_blank" alt="성북구 맛집" title="성북구 맛집" href="#" coords="641,490,631,474,624,460,617,446,612,439,603,434,592,431,579,430,563,424,565,411,577,407,583,392,583,382,581,371,577,362,573,352,569,340,566,330,563,320,561,310,558,302,549,300,548,294,563,293,570,281,578,290,584,294,591,298,599,301,609,308,618,315,626,321,633,327,640,331,643,345,649,366,654,374,662,375,675,376,690,375,705,375,715,373,725,367,729,357,736,344,745,329,755,339,766,356,774,364,788,367,799,371,800,397,764,406,742,417,730,426,725,438,720,446,699,458,687,465,683,473,679,481,672,490" shape="poly">
		    <area target="_blank" alt="동대문구 맛집" title="동대문구 맛집" href="#" coords="699,517,692,525,681,523,675,515,674,495,683,484,685,472,692,465,701,459,722,448,732,433,741,423,747,416,755,411,763,407,771,406,801,400,801,409,803,430,806,452,808,473,810,489,813,518,807,535,798,554,779,550,764,545,742,537,734,517" shape="poly">
		    <area target="_blank" alt="중랑구 맛집" title="중랑구 맛집" href="#" coords="807,372,811,367,821,367,831,363,843,353,856,353,871,353,882,353,891,350,895,354,910,358,913,365,919,372,922,382,916,395,908,404,905,414,910,425,910,433,905,440,904,456,898,466,890,473,886,482,878,491,873,496,876,502,874,509,862,507,846,517,830,517,817,517" shape="poly">
		    <area target="_blank" alt="강북구 맛집" title="강북구 맛집" href="#" coords="654,367,650,354,648,343,643,332,634,322,620,311,608,301,599,295,587,293,576,280,580,275,580,203,599,174,609,136,618,133,638,125,642,151,641,168,640,188,637,206,637,216,642,223,652,230,657,237,662,244,678,247,685,256,696,266,706,278,714,289,722,300,730,310,742,324,736,338,728,351,722,361,713,370,692,371,667,371" shape="poly">
		    <area target="_blank" alt="도봉구 맛집" title="도봉구 맛집" href="#" coords="684,245,670,241,657,231,645,215,648,203,648,186,648,171,649,158,649,142,645,127,650,124,653,108,653,98,657,85,671,80,686,81,700,80,705,87,708,98,722,101,738,101,748,103,752,108,763,110,762,122,759,138,755,150,751,163,750,174,751,185,756,194,759,201,762,212,762,223,761,232,761,244,759,255,757,265,754,277,751,287,750,303,734,303" shape="poly">
		    <area target="_blank" alt="노원구 맛집" title="노원구 맛집" href="#" coords="849,100,866,104,871,114,865,124,857,137,860,149,869,160,873,167,874,186,861,199,860,214,857,222,858,238,865,255,876,255,886,257,901,261,902,275,903,283,909,298,908,306,902,316,891,318,886,325,886,333,889,344,881,347,868,348,858,348,843,349,831,354,820,360,806,367,777,362,770,350,762,339,755,330,749,318,741,308,756,303,759,281,764,261,765,244,766,226,769,206,763,189,756,175,757,160,759,149,764,136,769,119,770,102,779,97,791,93,799,86,806,78,818,76" shape="poly">
		</map>

	</div>
	
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/maphilight/1.4.0/jquery.maphilight.min.js"></script>
	<script>
			
		$(function() {
			$(".seoul-area").maphilight();
		});
	
	</script>
</body>
</html>