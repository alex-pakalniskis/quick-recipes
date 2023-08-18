## Return unique values of a range
[UNIQUE Documentation](https://support.google.com/docs/answer/10522653?hl=en)

`=unique(data!B:B)`

## Conditional mean of a range
[AVERAGEIF Documentation](https://support.google.com/docs/answer/3256529?hl=en&ref_topic=3105600)

`=AVERAGEIF(data!B:C, A2, data!C:C)`

## Conditional median of a range
* [MEDIAN Documentation](https://support.google.com/docs/answer/3094025?hl=en&ref_topic=3105600)
* [IF Documentation](https://support.google.com/docs/answer/3093364?hl=en)
* [ArrayForumla Documentation](https://support.google.com/docs/answer/3093275?hl=en)

`=ArrayFormula(MEDIAN(IF(data!B:B=A2,data!C:C)))`

## Conditional max of a range
[MAXIFS Documentation](https://support.google.com/docs/answer/7013817?hl=en)

`=MAXIFS(data!C:C, data!B:B, A2)`

## Conditional minimum of a range
[MINIFS Documentation](https://support.google.com/docs/answer/7014063?hl=en&ref_topic=3105600)

`=MINIFS(data!C:C, data!B:B, A2)`

## Conditional count of a range
[COUNTIF Documentation](https://support.google.com/docs/answer/3093480)

`=COUNTIF(data!A:B, A2)`
