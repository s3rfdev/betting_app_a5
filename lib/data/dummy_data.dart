List<String> leagueList = [
  'Qui et league',
  'At sed league',
  'Vel nulla league',
  'Volutpat. nibh league',
  'Molestie quis league',
  'Commodo hendrerit league',
  'Sit in league',
  'Dignissim molestie league',
];

List<TableItem> tableList = [
  TableItem(teamName: 'Elit, Adipiscing Team', p: '5', gd: '6', pts: '10'),
  TableItem(teamName: 'Facilisis eros Team', p: '5', gd: '6', pts: '9'),
  TableItem(teamName: 'Veniam, Aliquam Team', p: '4', gd: '4', pts: '9'),
  TableItem(teamName: 'Dignissim Team', p: '4', gd: '4', pts: '8'),
  TableItem(teamName: 'Tincidunt Team vel', p: '4', gd: '4', pts: '8'),
  TableItem(teamName: 'Eu nostrud Team', p: '4', gd: '4', pts: '7'),
  TableItem(teamName: 'Blandit autem euismod', p: '4', gd: '4', pts: '6'),
  TableItem(teamName: 'Elde passo Team', p: '4', gd: '2', pts: '5'),
];

class TableItem {
  String teamName;
  String p;
  String gd;
  String pts;
  TableItem({
    required this.teamName,
    required this.p,
    required this.gd,
    required this.pts,
  });
}
