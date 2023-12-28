// To parse this JSON data, do
//
//     final songResponse = songResponseFromJson(jsonString);

import 'dart:convert';

SongResponse songResponseFromJson(String str) =>
    SongResponse.fromJson(json.decode(str));

String songResponseToJson(SongResponse data) => json.encode(data.toJson());

class SongResponse {
  ResponseContext? responseContext;
  Contents? contents;
  CurrentVideoEndpoint? currentVideoEndpoint;
  String? trackingParams;
  PlayerOverlays? playerOverlays;
  VideoReporting? videoReporting;

  SongResponse({
    this.responseContext,
    this.contents,
    this.currentVideoEndpoint,
    this.trackingParams,
    this.playerOverlays,
    this.videoReporting,
  });

  factory SongResponse.fromJson(Map<String, dynamic> json) => SongResponse(
        responseContext: json["responseContext"] == null
            ? null
            : ResponseContext.fromJson(json["responseContext"]),
        contents: json["contents"] == null
            ? null
            : Contents.fromJson(json["contents"]),
        currentVideoEndpoint: json["currentVideoEndpoint"] == null
            ? null
            : CurrentVideoEndpoint.fromJson(json["currentVideoEndpoint"]),
        trackingParams: json["trackingParams"],
        playerOverlays: json["playerOverlays"] == null
            ? null
            : PlayerOverlays.fromJson(json["playerOverlays"]),
        videoReporting: json["videoReporting"] == null
            ? null
            : VideoReporting.fromJson(json["videoReporting"]),
      );

  Map<String, dynamic> toJson() => {
        "responseContext": responseContext?.toJson(),
        "contents": contents?.toJson(),
        "currentVideoEndpoint": currentVideoEndpoint?.toJson(),
        "trackingParams": trackingParams,
        "playerOverlays": playerOverlays?.toJson(),
        "videoReporting": videoReporting?.toJson(),
      };
}

class Contents {
  SingleColumnMusicWatchNextResultsRenderer?
      singleColumnMusicWatchNextResultsRenderer;

  Contents({
    this.singleColumnMusicWatchNextResultsRenderer,
  });

  factory Contents.fromJson(Map<String, dynamic> json) => Contents(
        singleColumnMusicWatchNextResultsRenderer:
            json["singleColumnMusicWatchNextResultsRenderer"] == null
                ? null
                : SingleColumnMusicWatchNextResultsRenderer.fromJson(
                    json["singleColumnMusicWatchNextResultsRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "singleColumnMusicWatchNextResultsRenderer":
            singleColumnMusicWatchNextResultsRenderer?.toJson(),
      };
}

class SingleColumnMusicWatchNextResultsRenderer {
  TabbedRenderer? tabbedRenderer;

  SingleColumnMusicWatchNextResultsRenderer({
    this.tabbedRenderer,
  });

  factory SingleColumnMusicWatchNextResultsRenderer.fromJson(
          Map<String, dynamic> json) =>
      SingleColumnMusicWatchNextResultsRenderer(
        tabbedRenderer: json["tabbedRenderer"] == null
            ? null
            : TabbedRenderer.fromJson(json["tabbedRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "tabbedRenderer": tabbedRenderer?.toJson(),
      };
}

class TabbedRenderer {
  WatchNextTabbedResultsRenderer? watchNextTabbedResultsRenderer;

  TabbedRenderer({
    this.watchNextTabbedResultsRenderer,
  });

  factory TabbedRenderer.fromJson(Map<String, dynamic> json) => TabbedRenderer(
        watchNextTabbedResultsRenderer:
            json["watchNextTabbedResultsRenderer"] == null
                ? null
                : WatchNextTabbedResultsRenderer.fromJson(
                    json["watchNextTabbedResultsRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "watchNextTabbedResultsRenderer":
            watchNextTabbedResultsRenderer?.toJson(),
      };
}

class WatchNextTabbedResultsRenderer {
  List<Tab>? tabs;

  WatchNextTabbedResultsRenderer({
    this.tabs,
  });

  factory WatchNextTabbedResultsRenderer.fromJson(Map<String, dynamic> json) =>
      WatchNextTabbedResultsRenderer(
        tabs: json["tabs"] == null
            ? []
            : List<Tab>.from(json["tabs"]!.map((x) => Tab.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "tabs": tabs == null
            ? []
            : List<dynamic>.from(tabs!.map((x) => x.toJson())),
      };
}

class Tab {
  TabRenderer? tabRenderer;

  Tab({
    this.tabRenderer,
  });

  factory Tab.fromJson(Map<String, dynamic> json) => Tab(
        tabRenderer: json["tabRenderer"] == null
            ? null
            : TabRenderer.fromJson(json["tabRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "tabRenderer": tabRenderer?.toJson(),
      };
}

class TabRenderer {
  String? title;
  TabRendererContent? content;
  String? trackingParams;
  Endpoint? endpoint;

  TabRenderer({
    this.title,
    this.content,
    this.trackingParams,
    this.endpoint,
  });

  factory TabRenderer.fromJson(Map<String, dynamic> json) => TabRenderer(
        title: json["title"],
        content: json["content"] == null
            ? null
            : TabRendererContent.fromJson(json["content"]),
        trackingParams: json["trackingParams"],
        endpoint: json["endpoint"] == null
            ? null
            : Endpoint.fromJson(json["endpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "content": content?.toJson(),
        "trackingParams": trackingParams,
        "endpoint": endpoint?.toJson(),
      };
}

class TabRendererContent {
  MusicQueueRenderer? musicQueueRenderer;

  TabRendererContent({
    this.musicQueueRenderer,
  });

  factory TabRendererContent.fromJson(Map<String, dynamic> json) =>
      TabRendererContent(
        musicQueueRenderer: json["musicQueueRenderer"] == null
            ? null
            : MusicQueueRenderer.fromJson(json["musicQueueRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "musicQueueRenderer": musicQueueRenderer?.toJson(),
      };
}

class MusicQueueRenderer {
  MusicQueueRendererContent? content;
  bool? hack;
  Header? header;
  SubHeaderChipCloud? subHeaderChipCloud;

  MusicQueueRenderer({
    this.content,
    this.hack,
    this.header,
    this.subHeaderChipCloud,
  });

  factory MusicQueueRenderer.fromJson(Map<String, dynamic> json) =>
      MusicQueueRenderer(
        content: json["content"] == null
            ? null
            : MusicQueueRendererContent.fromJson(json["content"]),
        hack: json["hack"],
        header: json["header"] == null ? null : Header.fromJson(json["header"]),
        subHeaderChipCloud: json["subHeaderChipCloud"] == null
            ? null
            : SubHeaderChipCloud.fromJson(json["subHeaderChipCloud"]),
      );

  Map<String, dynamic> toJson() => {
        "content": content?.toJson(),
        "hack": hack,
        "header": header?.toJson(),
        "subHeaderChipCloud": subHeaderChipCloud?.toJson(),
      };
}

class MusicQueueRendererContent {
  PlaylistPanelRenderer? playlistPanelRenderer;

  MusicQueueRendererContent({
    this.playlistPanelRenderer,
  });

  factory MusicQueueRendererContent.fromJson(Map<String, dynamic> json) =>
      MusicQueueRendererContent(
        playlistPanelRenderer: json["playlistPanelRenderer"] == null
            ? null
            : PlaylistPanelRenderer.fromJson(json["playlistPanelRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playlistPanelRenderer": playlistPanelRenderer?.toJson(),
      };
}

class PlaylistPanelRenderer {
  String? title;
  List<ContentElement>? contents;
  String? playlistId;
  bool? isInfinite;
  List<Continuation>? continuations;
  Title? shortBylineText;
  String? trackingParams;
  Title? titleText;
  PreviewDescription? previewDescription;
  int? numItemsToShow;

  PlaylistPanelRenderer({
    this.title,
    this.contents,
    this.playlistId,
    this.isInfinite,
    this.continuations,
    this.shortBylineText,
    this.trackingParams,
    this.titleText,
    this.previewDescription,
    this.numItemsToShow,
  });

  factory PlaylistPanelRenderer.fromJson(Map<String, dynamic> json) =>
      PlaylistPanelRenderer(
        title: json["title"],
        contents: json["contents"] == null
            ? []
            : List<ContentElement>.from(
                json["contents"]!.map((x) => ContentElement.fromJson(x))),
        playlistId: json["playlistId"]!,
        isInfinite: json["isInfinite"],
        continuations: json["continuations"] == null
            ? []
            : List<Continuation>.from(
                json["continuations"]!.map((x) => Continuation.fromJson(x))),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : Title.fromJson(json["shortBylineText"]),
        trackingParams: json["trackingParams"],
        titleText: json["titleText"] == null
            ? null
            : Title.fromJson(json["titleText"]),
        previewDescription: json["previewDescription"] == null
            ? null
            : PreviewDescription.fromJson(json["previewDescription"]),
        numItemsToShow: json["numItemsToShow"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "contents": contents == null
            ? []
            : List<dynamic>.from(contents!.map((x) => x.toJson())),
        "playlistId": playlistId,
        "isInfinite": isInfinite,
        "continuations": continuations == null
            ? []
            : List<dynamic>.from(continuations!.map((x) => x.toJson())),
        "shortBylineText": shortBylineText?.toJson(),
        "trackingParams": trackingParams,
        "titleText": titleText?.toJson(),
        "previewDescription": previewDescription?.toJson(),
        "numItemsToShow": numItemsToShow,
      };
}

class ContentElement {
  PlaylistPanelVideoRenderer? playlistPanelVideoRenderer;

  ContentElement({
    this.playlistPanelVideoRenderer,
  });

  factory ContentElement.fromJson(Map<String, dynamic> json) => ContentElement(
        playlistPanelVideoRenderer: json["playlistPanelVideoRenderer"] == null
            ? null
            : PlaylistPanelVideoRenderer.fromJson(
                json["playlistPanelVideoRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playlistPanelVideoRenderer": playlistPanelVideoRenderer?.toJson(),
      };
}

class PlaylistPanelVideoRenderer {
  Title? title;
  LongBylineText? longBylineText;
  ThumbnailDetailsClass? thumbnail;
  LengthText? lengthText;
  bool? selected;
  PlaylistPanelVideoRendererNavigationEndpoint? navigationEndpoint;
  String? videoId;
  Title? shortBylineText;
  String? trackingParams;
  Menu? menu;
  String? playlistSetVideoId;
  bool? canReorder;
  List<Badge>? badges;

  PlaylistPanelVideoRenderer({
    this.title,
    this.longBylineText,
    this.thumbnail,
    this.lengthText,
    this.selected,
    this.navigationEndpoint,
    this.videoId,
    this.shortBylineText,
    this.trackingParams,
    this.menu,
    this.playlistSetVideoId,
    this.canReorder,
    this.badges,
  });

  factory PlaylistPanelVideoRenderer.fromJson(Map<String, dynamic> json) =>
      PlaylistPanelVideoRenderer(
        title: json["title"] == null ? null : Title.fromJson(json["title"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : LongBylineText.fromJson(json["longBylineText"]),
        thumbnail: json["thumbnail"] == null
            ? null
            : ThumbnailDetailsClass.fromJson(json["thumbnail"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthText.fromJson(json["lengthText"]),
        selected: json["selected"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : PlaylistPanelVideoRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        videoId: json["videoId"],
        shortBylineText: json["shortBylineText"] == null
            ? null
            : Title.fromJson(json["shortBylineText"]),
        trackingParams: json["trackingParams"],
        menu: json["menu"] == null ? null : Menu.fromJson(json["menu"]),
        playlistSetVideoId: json["playlistSetVideoId"],
        canReorder: json["canReorder"],
        badges: json["badges"] == null
            ? []
            : List<Badge>.from(json["badges"]!.map((x) => Badge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title?.toJson(),
        "longBylineText": longBylineText?.toJson(),
        "thumbnail": thumbnail?.toJson(),
        "lengthText": lengthText?.toJson(),
        "selected": selected,
        "navigationEndpoint": navigationEndpoint?.toJson(),
        "videoId": videoId,
        "shortBylineText": shortBylineText?.toJson(),
        "trackingParams": trackingParams,
        "menu": menu?.toJson(),
        "playlistSetVideoId": playlistSetVideoId,
        "canReorder": canReorder,
        "badges": badges == null
            ? []
            : List<dynamic>.from(badges!.map((x) => x.toJson())),
      };
}

class Badge {
  MusicInlineBadgeRenderer? musicInlineBadgeRenderer;

  Badge({
    this.musicInlineBadgeRenderer,
  });

  factory Badge.fromJson(Map<String, dynamic> json) => Badge(
        musicInlineBadgeRenderer: json["musicInlineBadgeRenderer"] == null
            ? null
            : MusicInlineBadgeRenderer.fromJson(
                json["musicInlineBadgeRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "musicInlineBadgeRenderer": musicInlineBadgeRenderer?.toJson(),
      };
}

class MusicInlineBadgeRenderer {
  String? trackingParams;
  Icon? icon;
  Accessibility? accessibilityData;

  MusicInlineBadgeRenderer({
    this.trackingParams,
    this.icon,
    this.accessibilityData,
  });

  factory MusicInlineBadgeRenderer.fromJson(Map<String, dynamic> json) =>
      MusicInlineBadgeRenderer(
        trackingParams: json["trackingParams"],
        icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
        accessibilityData: json["accessibilityData"] == null
            ? null
            : Accessibility.fromJson(json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "trackingParams": trackingParams,
        "icon": icon?.toJson(),
        "accessibilityData": accessibilityData?.toJson(),
      };
}

class Accessibility {
  AccessibilityData? accessibilityData;

  Accessibility({
    this.accessibilityData,
  });

  factory Accessibility.fromJson(Map<String, dynamic> json) => Accessibility(
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "accessibilityData": accessibilityData?.toJson(),
      };
}

class AccessibilityData {
  String? label;

  AccessibilityData({
    this.label,
  });

  factory AccessibilityData.fromJson(Map<String, dynamic> json) =>
      AccessibilityData(
        label: json["label"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
      };
}

class Icon {
  String? iconType;

  Icon({
    this.iconType,
  });

  factory Icon.fromJson(Map<String, dynamic> json) => Icon(
        iconType: json["iconType"],
      );

  Map<String, dynamic> toJson() => {
        "iconType": iconType,
      };
}

class LengthText {
  List<LengthTextRun>? runs;
  Accessibility? accessibility;

  LengthText({
    this.runs,
    this.accessibility,
  });

  factory LengthText.fromJson(Map<String, dynamic> json) => LengthText(
        runs: json["runs"] == null
            ? []
            : List<LengthTextRun>.from(
                json["runs"]!.map((x) => LengthTextRun.fromJson(x))),
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? []
            : List<dynamic>.from(runs!.map((x) => x.toJson())),
        "accessibility": accessibility?.toJson(),
      };
}

class LengthTextRun {
  String? text;

  LengthTextRun({
    this.text,
  });

  factory LengthTextRun.fromJson(Map<String, dynamic> json) => LengthTextRun(
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
      };
}

class LongBylineText {
  List<LongBylineTextRun>? runs;

  LongBylineText({
    this.runs,
  });

  factory LongBylineText.fromJson(Map<String, dynamic> json) => LongBylineText(
        runs: json["runs"] == null
            ? []
            : List<LongBylineTextRun>.from(
                json["runs"]!.map((x) => LongBylineTextRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? []
            : List<dynamic>.from(runs!.map((x) => x.toJson())),
      };
}

class LongBylineTextRun {
  String? text;
  Endpoint? navigationEndpoint;

  LongBylineTextRun({
    this.text,
    this.navigationEndpoint,
  });

  factory LongBylineTextRun.fromJson(Map<String, dynamic> json) =>
      LongBylineTextRun(
        text: json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : Endpoint.fromJson(json["navigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "navigationEndpoint": navigationEndpoint?.toJson(),
      };
}

class Endpoint {
  String? clickTrackingParams;
  BrowseEndpoint? browseEndpoint;

  Endpoint({
    this.clickTrackingParams,
    this.browseEndpoint,
  });

  factory Endpoint.fromJson(Map<String, dynamic> json) => Endpoint(
        clickTrackingParams: json["clickTrackingParams"],
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : BrowseEndpoint.fromJson(json["browseEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "browseEndpoint": browseEndpoint?.toJson(),
      };
}

class BrowseEndpoint {
  String? browseId;
  BrowseEndpointContextSupportedConfigs? browseEndpointContextSupportedConfigs;

  BrowseEndpoint({
    this.browseId,
    this.browseEndpointContextSupportedConfigs,
  });

  factory BrowseEndpoint.fromJson(Map<String, dynamic> json) => BrowseEndpoint(
        browseId: json["browseId"],
        browseEndpointContextSupportedConfigs:
            json["browseEndpointContextSupportedConfigs"] == null
                ? null
                : BrowseEndpointContextSupportedConfigs.fromJson(
                    json["browseEndpointContextSupportedConfigs"]),
      );

  Map<String, dynamic> toJson() => {
        "browseId": browseId,
        "browseEndpointContextSupportedConfigs":
            browseEndpointContextSupportedConfigs?.toJson(),
      };
}

class BrowseEndpointContextSupportedConfigs {
  BrowseEndpointContextMusicConfig? browseEndpointContextMusicConfig;

  BrowseEndpointContextSupportedConfigs({
    this.browseEndpointContextMusicConfig,
  });

  factory BrowseEndpointContextSupportedConfigs.fromJson(
          Map<String, dynamic> json) =>
      BrowseEndpointContextSupportedConfigs(
        browseEndpointContextMusicConfig:
            json["browseEndpointContextMusicConfig"] == null
                ? null
                : BrowseEndpointContextMusicConfig.fromJson(
                    json["browseEndpointContextMusicConfig"]),
      );

  Map<String, dynamic> toJson() => {
        "browseEndpointContextMusicConfig":
            browseEndpointContextMusicConfig?.toJson(),
      };
}

class BrowseEndpointContextMusicConfig {
  String? pageType;

  BrowseEndpointContextMusicConfig({
    this.pageType,
  });

  factory BrowseEndpointContextMusicConfig.fromJson(
          Map<String, dynamic> json) =>
      BrowseEndpointContextMusicConfig(
        pageType: json["pageType"]!,
      );

  Map<String, dynamic> toJson() => {
        "pageType": pageType,
      };
}

class Menu {
  MenuRenderer? menuRenderer;

  Menu({
    this.menuRenderer,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        menuRenderer: json["menuRenderer"] == null
            ? null
            : MenuRenderer.fromJson(json["menuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuRenderer": menuRenderer?.toJson(),
      };
}

class MenuRenderer {
  List<MenuRendererItem>? items;
  String? trackingParams;
  Accessibility? accessibility;

  MenuRenderer({
    this.items,
    this.trackingParams,
    this.accessibility,
  });

  factory MenuRenderer.fromJson(Map<String, dynamic> json) => MenuRenderer(
        items: json["items"] == null
            ? []
            : List<MenuRendererItem>.from(
                json["items"]!.map((x) => MenuRendererItem.fromJson(x))),
        trackingParams: json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "trackingParams": trackingParams,
        "accessibility": accessibility?.toJson(),
      };
}

class MenuRendererItem {
  MenuItemRenderer? menuNavigationItemRenderer;
  MenuItemRenderer? menuServiceItemRenderer;
  ToggleMenuServiceItemRenderer? toggleMenuServiceItemRenderer;

  MenuRendererItem({
    this.menuNavigationItemRenderer,
    this.menuServiceItemRenderer,
    this.toggleMenuServiceItemRenderer,
  });

  factory MenuRendererItem.fromJson(Map<String, dynamic> json) =>
      MenuRendererItem(
        menuNavigationItemRenderer: json["menuNavigationItemRenderer"] == null
            ? null
            : MenuItemRenderer.fromJson(json["menuNavigationItemRenderer"]),
        menuServiceItemRenderer: json["menuServiceItemRenderer"] == null
            ? null
            : MenuItemRenderer.fromJson(json["menuServiceItemRenderer"]),
        toggleMenuServiceItemRenderer:
            json["toggleMenuServiceItemRenderer"] == null
                ? null
                : ToggleMenuServiceItemRenderer.fromJson(
                    json["toggleMenuServiceItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuNavigationItemRenderer": menuNavigationItemRenderer?.toJson(),
        "menuServiceItemRenderer": menuServiceItemRenderer?.toJson(),
        "toggleMenuServiceItemRenderer":
            toggleMenuServiceItemRenderer?.toJson(),
      };
}

class MenuItemRenderer {
  Title? text;
  Icon? icon;
  MenuNavigationItemRendererNavigationEndpoint? navigationEndpoint;
  String? trackingParams;
  ServiceEndpoint? serviceEndpoint;

  MenuItemRenderer({
    this.text,
    this.icon,
    this.navigationEndpoint,
    this.trackingParams,
    this.serviceEndpoint,
  });

  factory MenuItemRenderer.fromJson(Map<String, dynamic> json) =>
      MenuItemRenderer(
        text: json["text"] == null ? null : Title.fromJson(json["text"]),
        icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : MenuNavigationItemRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        trackingParams: json["trackingParams"],
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : ServiceEndpoint.fromJson(json["serviceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text?.toJson(),
        "icon": icon?.toJson(),
        "navigationEndpoint": navigationEndpoint?.toJson(),
        "trackingParams": trackingParams,
        "serviceEndpoint": serviceEndpoint?.toJson(),
      };
}

class MenuNavigationItemRendererNavigationEndpoint {
  String? clickTrackingParams;
  PurpleWatchEndpoint? watchEndpoint;
  ModalEndpoint? modalEndpoint;
  BrowseEndpoint? browseEndpoint;
  ShareEntityEndpoint? shareEntityEndpoint;

  MenuNavigationItemRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.watchEndpoint,
    this.modalEndpoint,
    this.browseEndpoint,
    this.shareEntityEndpoint,
  });

  factory MenuNavigationItemRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      MenuNavigationItemRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"],
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : PurpleWatchEndpoint.fromJson(json["watchEndpoint"]),
        modalEndpoint: json["modalEndpoint"] == null
            ? null
            : ModalEndpoint.fromJson(json["modalEndpoint"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : BrowseEndpoint.fromJson(json["browseEndpoint"]),
        shareEntityEndpoint: json["shareEntityEndpoint"] == null
            ? null
            : ShareEntityEndpoint.fromJson(json["shareEntityEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "watchEndpoint": watchEndpoint?.toJson(),
        "modalEndpoint": modalEndpoint?.toJson(),
        "browseEndpoint": browseEndpoint?.toJson(),
        "shareEntityEndpoint": shareEntityEndpoint?.toJson(),
      };
}

class ModalEndpoint {
  Modal? modal;

  ModalEndpoint({
    this.modal,
  });

  factory ModalEndpoint.fromJson(Map<String, dynamic> json) => ModalEndpoint(
        modal: json["modal"] == null ? null : Modal.fromJson(json["modal"]),
      );

  Map<String, dynamic> toJson() => {
        "modal": modal?.toJson(),
      };
}

class Modal {
  ModalWithTitleAndButtonRenderer? modalWithTitleAndButtonRenderer;

  Modal({
    this.modalWithTitleAndButtonRenderer,
  });

  factory Modal.fromJson(Map<String, dynamic> json) => Modal(
        modalWithTitleAndButtonRenderer:
            json["modalWithTitleAndButtonRenderer"] == null
                ? null
                : ModalWithTitleAndButtonRenderer.fromJson(
                    json["modalWithTitleAndButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "modalWithTitleAndButtonRenderer":
            modalWithTitleAndButtonRenderer?.toJson(),
      };
}

class ModalWithTitleAndButtonRenderer {
  Title? title;
  Title? content;
  CancelButtonClass? button;

  ModalWithTitleAndButtonRenderer({
    this.title,
    this.content,
    this.button,
  });

  factory ModalWithTitleAndButtonRenderer.fromJson(Map<String, dynamic> json) =>
      ModalWithTitleAndButtonRenderer(
        title: json["title"] == null ? null : Title.fromJson(json["title"]),
        content:
            json["content"] == null ? null : Title.fromJson(json["content"]),
        button: json["button"] == null
            ? null
            : CancelButtonClass.fromJson(json["button"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title?.toJson(),
        "content": content?.toJson(),
        "button": button?.toJson(),
      };
}

class CancelButtonClass {
  ButtonRenderer? buttonRenderer;

  CancelButtonClass({
    this.buttonRenderer,
  });

  factory CancelButtonClass.fromJson(Map<String, dynamic> json) =>
      CancelButtonClass(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : ButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer": buttonRenderer?.toJson(),
      };
}

class ButtonRenderer {
  String? style;
  bool? isDisabled;
  Title? text;
  ButtonRendererNavigationEndpoint? navigationEndpoint;
  String? trackingParams;

  ButtonRenderer({
    this.style,
    this.isDisabled,
    this.text,
    this.navigationEndpoint,
    this.trackingParams,
  });

  factory ButtonRenderer.fromJson(Map<String, dynamic> json) => ButtonRenderer(
        style: json["style"],
        isDisabled: json["isDisabled"],
        text: json["text"] == null ? null : Title.fromJson(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : ButtonRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        trackingParams: json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "style": style,
        "isDisabled": isDisabled,
        "text": text?.toJson(),
        "navigationEndpoint": navigationEndpoint?.toJson(),
        "trackingParams": trackingParams,
      };
}

class ButtonRendererNavigationEndpoint {
  String? clickTrackingParams;
  SignInEndpoint? signInEndpoint;

  ButtonRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.signInEndpoint,
  });

  factory ButtonRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      ButtonRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"],
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : SignInEndpoint.fromJson(json["signInEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "signInEndpoint": signInEndpoint?.toJson(),
      };
}

class SignInEndpoint {
  bool? hack;

  SignInEndpoint({
    this.hack,
  });

  factory SignInEndpoint.fromJson(Map<String, dynamic> json) => SignInEndpoint(
        hack: json["hack"],
      );

  Map<String, dynamic> toJson() => {
        "hack": hack,
      };
}

class Title {
  List<LengthTextRun>? runs;

  Title({
    this.runs,
  });

  factory Title.fromJson(Map<String, dynamic> json) => Title(
        runs: json["runs"] == null
            ? []
            : List<LengthTextRun>.from(
                json["runs"]!.map((x) => LengthTextRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? []
            : List<dynamic>.from(runs!.map((x) => x.toJson())),
      };
}

class ShareEntityEndpoint {
  String? serializedShareEntity;
  String? sharePanelType;

  ShareEntityEndpoint({
    this.serializedShareEntity,
    this.sharePanelType,
  });

  factory ShareEntityEndpoint.fromJson(Map<String, dynamic> json) =>
      ShareEntityEndpoint(
        serializedShareEntity: json["serializedShareEntity"],
        sharePanelType: json["sharePanelType"],
      );

  Map<String, dynamic> toJson() => {
        "serializedShareEntity": serializedShareEntity,
        "sharePanelType": sharePanelType,
      };
}

class PurpleWatchEndpoint {
  String? videoId;
  String? playlistId;
  String? params;
  LoggingContext? loggingContext;
  PurpleWatchEndpointMusicSupportedConfigs? watchEndpointMusicSupportedConfigs;

  PurpleWatchEndpoint({
    this.videoId,
    this.playlistId,
    this.params,
    this.loggingContext,
    this.watchEndpointMusicSupportedConfigs,
  });

  factory PurpleWatchEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleWatchEndpoint(
        videoId: json["videoId"],
        playlistId: json["playlistId"],
        params: json["params"],
        loggingContext: json["loggingContext"] == null
            ? null
            : LoggingContext.fromJson(json["loggingContext"]),
        watchEndpointMusicSupportedConfigs:
            json["watchEndpointMusicSupportedConfigs"] == null
                ? null
                : PurpleWatchEndpointMusicSupportedConfigs.fromJson(
                    json["watchEndpointMusicSupportedConfigs"]),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId,
        "playlistId": playlistId,
        "params": params,
        "loggingContext": loggingContext?.toJson(),
        "watchEndpointMusicSupportedConfigs":
            watchEndpointMusicSupportedConfigs?.toJson(),
      };
}

class LoggingContext {
  VssLoggingContext? vssLoggingContext;

  LoggingContext({
    this.vssLoggingContext,
  });

  factory LoggingContext.fromJson(Map<String, dynamic> json) => LoggingContext(
        vssLoggingContext: json["vssLoggingContext"] == null
            ? null
            : VssLoggingContext.fromJson(json["vssLoggingContext"]),
      );

  Map<String, dynamic> toJson() => {
        "vssLoggingContext": vssLoggingContext?.toJson(),
      };
}

class VssLoggingContext {
  String? serializedContextData;

  VssLoggingContext({
    this.serializedContextData,
  });

  factory VssLoggingContext.fromJson(Map<String, dynamic> json) =>
      VssLoggingContext(
        serializedContextData: json["serializedContextData"],
      );

  Map<String, dynamic> toJson() => {
        "serializedContextData": serializedContextData,
      };
}

class PurpleWatchEndpointMusicSupportedConfigs {
  PurpleWatchEndpointMusicConfig? watchEndpointMusicConfig;

  PurpleWatchEndpointMusicSupportedConfigs({
    this.watchEndpointMusicConfig,
  });

  factory PurpleWatchEndpointMusicSupportedConfigs.fromJson(
          Map<String, dynamic> json) =>
      PurpleWatchEndpointMusicSupportedConfigs(
        watchEndpointMusicConfig: json["watchEndpointMusicConfig"] == null
            ? null
            : PurpleWatchEndpointMusicConfig.fromJson(
                json["watchEndpointMusicConfig"]),
      );

  Map<String, dynamic> toJson() => {
        "watchEndpointMusicConfig": watchEndpointMusicConfig?.toJson(),
      };
}

class PurpleWatchEndpointMusicConfig {
  String? musicVideoType;

  PurpleWatchEndpointMusicConfig({
    this.musicVideoType,
  });

  factory PurpleWatchEndpointMusicConfig.fromJson(Map<String, dynamic> json) =>
      PurpleWatchEndpointMusicConfig(
        musicVideoType: json["musicVideoType"],
      );

  Map<String, dynamic> toJson() => {
        "musicVideoType": musicVideoType,
      };
}

class ServiceEndpoint {
  String? clickTrackingParams;
  QueueAddEndpoint? queueAddEndpoint;
  RemoveFromQueueEndpoint? removeFromQueueEndpoint;
  ModalEndpoint? modalEndpoint;

  ServiceEndpoint({
    this.clickTrackingParams,
    this.queueAddEndpoint,
    this.removeFromQueueEndpoint,
    this.modalEndpoint,
  });

  factory ServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      ServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"],
        queueAddEndpoint: json["queueAddEndpoint"] == null
            ? null
            : QueueAddEndpoint.fromJson(json["queueAddEndpoint"]),
        removeFromQueueEndpoint: json["removeFromQueueEndpoint"] == null
            ? null
            : RemoveFromQueueEndpoint.fromJson(json["removeFromQueueEndpoint"]),
        modalEndpoint: json["modalEndpoint"] == null
            ? null
            : ModalEndpoint.fromJson(json["modalEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "queueAddEndpoint": queueAddEndpoint?.toJson(),
        "removeFromQueueEndpoint": removeFromQueueEndpoint?.toJson(),
        "modalEndpoint": modalEndpoint?.toJson(),
      };
}

class QueueAddEndpoint {
  QueueTarget? queueTarget;
  String? queueInsertPosition;
  List<Command>? commands;

  QueueAddEndpoint({
    this.queueTarget,
    this.queueInsertPosition,
    this.commands,
  });

  factory QueueAddEndpoint.fromJson(Map<String, dynamic> json) =>
      QueueAddEndpoint(
        queueTarget: json["queueTarget"] == null
            ? null
            : QueueTarget.fromJson(json["queueTarget"]),
        queueInsertPosition: json["queueInsertPosition"],
        commands: json["commands"] == null
            ? []
            : List<Command>.from(
                json["commands"]!.map((x) => Command.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "queueTarget": queueTarget?.toJson(),
        "queueInsertPosition": queueInsertPosition,
        "commands": commands == null
            ? []
            : List<dynamic>.from(commands!.map((x) => x.toJson())),
      };
}

class Command {
  String? clickTrackingParams;
  AddToToastAction? addToToastAction;

  Command({
    this.clickTrackingParams,
    this.addToToastAction,
  });

  factory Command.fromJson(Map<String, dynamic> json) => Command(
        clickTrackingParams: json["clickTrackingParams"],
        addToToastAction: json["addToToastAction"] == null
            ? null
            : AddToToastAction.fromJson(json["addToToastAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "addToToastAction": addToToastAction?.toJson(),
      };
}

class AddToToastAction {
  AddToToastActionItem? item;

  AddToToastAction({
    this.item,
  });

  factory AddToToastAction.fromJson(Map<String, dynamic> json) =>
      AddToToastAction(
        item: json["item"] == null
            ? null
            : AddToToastActionItem.fromJson(json["item"]),
      );

  Map<String, dynamic> toJson() => {
        "item": item?.toJson(),
      };
}

class AddToToastActionItem {
  NotificationTextRenderer? notificationTextRenderer;

  AddToToastActionItem({
    this.notificationTextRenderer,
  });

  factory AddToToastActionItem.fromJson(Map<String, dynamic> json) =>
      AddToToastActionItem(
        notificationTextRenderer: json["notificationTextRenderer"] == null
            ? null
            : NotificationTextRenderer.fromJson(
                json["notificationTextRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "notificationTextRenderer": notificationTextRenderer?.toJson(),
      };
}

class NotificationTextRenderer {
  Title? successResponseText;
  String? trackingParams;

  NotificationTextRenderer({
    this.successResponseText,
    this.trackingParams,
  });

  factory NotificationTextRenderer.fromJson(Map<String, dynamic> json) =>
      NotificationTextRenderer(
        successResponseText: json["successResponseText"] == null
            ? null
            : Title.fromJson(json["successResponseText"]),
        trackingParams: json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "successResponseText": successResponseText?.toJson(),
        "trackingParams": trackingParams,
      };
}

class QueueTarget {
  String? videoId;
  OnEmptyQueue? onEmptyQueue;

  QueueTarget({
    this.videoId,
    this.onEmptyQueue,
  });

  factory QueueTarget.fromJson(Map<String, dynamic> json) => QueueTarget(
        videoId: json["videoId"],
        onEmptyQueue: json["onEmptyQueue"] == null
            ? null
            : OnEmptyQueue.fromJson(json["onEmptyQueue"]),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId,
        "onEmptyQueue": onEmptyQueue?.toJson(),
      };
}

class OnEmptyQueue {
  String? clickTrackingParams;
  Target? watchEndpoint;

  OnEmptyQueue({
    this.clickTrackingParams,
    this.watchEndpoint,
  });

  factory OnEmptyQueue.fromJson(Map<String, dynamic> json) => OnEmptyQueue(
        clickTrackingParams: json["clickTrackingParams"],
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : Target.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "watchEndpoint": watchEndpoint?.toJson(),
      };
}

class Target {
  String? videoId;

  Target({
    this.videoId,
  });

  factory Target.fromJson(Map<String, dynamic> json) => Target(
        videoId: json["videoId"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId,
      };
}

class RemoveFromQueueEndpoint {
  String? videoId;
  List<Command>? commands;

  RemoveFromQueueEndpoint({
    this.videoId,
    this.commands,
  });

  factory RemoveFromQueueEndpoint.fromJson(Map<String, dynamic> json) =>
      RemoveFromQueueEndpoint(
        videoId: json["videoId"],
        commands: json["commands"] == null
            ? []
            : List<Command>.from(
                json["commands"]!.map((x) => Command.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId,
        "commands": commands == null
            ? []
            : List<dynamic>.from(commands!.map((x) => x.toJson())),
      };
}

class ToggleMenuServiceItemRenderer {
  Title? defaultText;
  Icon? defaultIcon;
  DislikeNavigationEndpoint? defaultServiceEndpoint;
  Title? toggledText;
  Icon? toggledIcon;
  String? trackingParams;

  ToggleMenuServiceItemRenderer({
    this.defaultText,
    this.defaultIcon,
    this.defaultServiceEndpoint,
    this.toggledText,
    this.toggledIcon,
    this.trackingParams,
  });

  factory ToggleMenuServiceItemRenderer.fromJson(Map<String, dynamic> json) =>
      ToggleMenuServiceItemRenderer(
        defaultText: json["defaultText"] == null
            ? null
            : Title.fromJson(json["defaultText"]),
        defaultIcon: json["defaultIcon"] == null
            ? null
            : Icon.fromJson(json["defaultIcon"]),
        defaultServiceEndpoint: json["defaultServiceEndpoint"] == null
            ? null
            : DislikeNavigationEndpoint.fromJson(
                json["defaultServiceEndpoint"]),
        toggledText: json["toggledText"] == null
            ? null
            : Title.fromJson(json["toggledText"]),
        toggledIcon: json["toggledIcon"] == null
            ? null
            : Icon.fromJson(json["toggledIcon"]),
        trackingParams: json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "defaultText": defaultText?.toJson(),
        "defaultIcon": defaultIcon?.toJson(),
        "defaultServiceEndpoint": defaultServiceEndpoint?.toJson(),
        "toggledText": toggledText?.toJson(),
        "toggledIcon": toggledIcon?.toJson(),
        "trackingParams": trackingParams,
      };
}

class DislikeNavigationEndpoint {
  String? clickTrackingParams;
  ModalEndpoint? modalEndpoint;

  DislikeNavigationEndpoint({
    this.clickTrackingParams,
    this.modalEndpoint,
  });

  factory DislikeNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      DislikeNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"],
        modalEndpoint: json["modalEndpoint"] == null
            ? null
            : ModalEndpoint.fromJson(json["modalEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "modalEndpoint": modalEndpoint?.toJson(),
      };
}

class PlaylistPanelVideoRendererNavigationEndpoint {
  String? clickTrackingParams;
  FluffyWatchEndpoint? watchEndpoint;

  PlaylistPanelVideoRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.watchEndpoint,
  });

  factory PlaylistPanelVideoRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      PlaylistPanelVideoRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"],
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : FluffyWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "watchEndpoint": watchEndpoint?.toJson(),
      };
}

class FluffyWatchEndpoint {
  String? videoId;
  String? playlistId;
  int? index;
  String? params;
  String? playerParams;
  String? playlistSetVideoId;
  LoggingContext? loggingContext;
  FluffyWatchEndpointMusicSupportedConfigs? watchEndpointMusicSupportedConfigs;

  FluffyWatchEndpoint({
    this.videoId,
    this.playlistId,
    this.index,
    this.params,
    this.playerParams,
    this.playlistSetVideoId,
    this.loggingContext,
    this.watchEndpointMusicSupportedConfigs,
  });

  factory FluffyWatchEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffyWatchEndpoint(
        videoId: json["videoId"],
        playlistId: json["playlistId"]!,
        index: json["index"],
        params: json["params"]!,
        playerParams: json["playerParams"],
        playlistSetVideoId: json["playlistSetVideoId"],
        loggingContext: json["loggingContext"] == null
            ? null
            : LoggingContext.fromJson(json["loggingContext"]),
        watchEndpointMusicSupportedConfigs:
            json["watchEndpointMusicSupportedConfigs"] == null
                ? null
                : FluffyWatchEndpointMusicSupportedConfigs.fromJson(
                    json["watchEndpointMusicSupportedConfigs"]),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId,
        "playlistId": playlistId,
        "index": index,
        "params": params,
        "playerParams": playerParams,
        "playlistSetVideoId": playlistSetVideoId,
        "loggingContext": loggingContext?.toJson(),
        "watchEndpointMusicSupportedConfigs":
            watchEndpointMusicSupportedConfigs?.toJson(),
      };
}

class FluffyWatchEndpointMusicSupportedConfigs {
  FluffyWatchEndpointMusicConfig? watchEndpointMusicConfig;

  FluffyWatchEndpointMusicSupportedConfigs({
    this.watchEndpointMusicConfig,
  });

  factory FluffyWatchEndpointMusicSupportedConfigs.fromJson(
          Map<String, dynamic> json) =>
      FluffyWatchEndpointMusicSupportedConfigs(
        watchEndpointMusicConfig: json["watchEndpointMusicConfig"] == null
            ? null
            : FluffyWatchEndpointMusicConfig.fromJson(
                json["watchEndpointMusicConfig"]),
      );

  Map<String, dynamic> toJson() => {
        "watchEndpointMusicConfig": watchEndpointMusicConfig?.toJson(),
      };
}

class FluffyWatchEndpointMusicConfig {
  bool? hasPersistentPlaylistPanel;
  String? musicVideoType;

  FluffyWatchEndpointMusicConfig({
    this.hasPersistentPlaylistPanel,
    this.musicVideoType,
  });

  factory FluffyWatchEndpointMusicConfig.fromJson(Map<String, dynamic> json) =>
      FluffyWatchEndpointMusicConfig(
        hasPersistentPlaylistPanel: json["hasPersistentPlaylistPanel"],
        musicVideoType: json["musicVideoType"]!,
      );

  Map<String, dynamic> toJson() => {
        "hasPersistentPlaylistPanel": hasPersistentPlaylistPanel,
        "musicVideoType": musicVideoType,
      };
}

class ThumbnailDetailsClass {
  List<ThumbnailElement>? thumbnails;

  ThumbnailDetailsClass({
    this.thumbnails,
  });

  factory ThumbnailDetailsClass.fromJson(Map<String, dynamic> json) =>
      ThumbnailDetailsClass(
        thumbnails: json["thumbnails"] == null
            ? []
            : List<ThumbnailElement>.from(
                json["thumbnails"]!.map((x) => ThumbnailElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? []
            : List<dynamic>.from(thumbnails!.map((x) => x.toJson())),
      };
}

class ThumbnailElement {
  String? url;
  int? width;
  int? height;

  ThumbnailElement({
    this.url,
    this.width,
    this.height,
  });

  factory ThumbnailElement.fromJson(Map<String, dynamic> json) =>
      ThumbnailElement(
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "width": width,
        "height": height,
      };
}

class Continuation {
  NextRadioContinuationData? nextRadioContinuationData;

  Continuation({
    this.nextRadioContinuationData,
  });

  factory Continuation.fromJson(Map<String, dynamic> json) => Continuation(
        nextRadioContinuationData: json["nextRadioContinuationData"] == null
            ? null
            : NextRadioContinuationData.fromJson(
                json["nextRadioContinuationData"]),
      );

  Map<String, dynamic> toJson() => {
        "nextRadioContinuationData": nextRadioContinuationData?.toJson(),
      };
}

class NextRadioContinuationData {
  String? continuation;
  String? clickTrackingParams;

  NextRadioContinuationData({
    this.continuation,
    this.clickTrackingParams,
  });

  factory NextRadioContinuationData.fromJson(Map<String, dynamic> json) =>
      NextRadioContinuationData(
        continuation: json["continuation"],
        clickTrackingParams: json["clickTrackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "continuation": continuation,
        "clickTrackingParams": clickTrackingParams,
      };
}

class PreviewDescription {
  PreviewDescription();

  factory PreviewDescription.fromJson(Map<String, dynamic> json) =>
      PreviewDescription();

  Map<String, dynamic> toJson() => {};
}

class Header {
  MusicQueueHeaderRenderer? musicQueueHeaderRenderer;

  Header({
    this.musicQueueHeaderRenderer,
  });

  factory Header.fromJson(Map<String, dynamic> json) => Header(
        musicQueueHeaderRenderer: json["musicQueueHeaderRenderer"] == null
            ? null
            : MusicQueueHeaderRenderer.fromJson(
                json["musicQueueHeaderRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "musicQueueHeaderRenderer": musicQueueHeaderRenderer?.toJson(),
      };
}

class MusicQueueHeaderRenderer {
  Title? title;
  Title? subtitle;
  List<ButtonElement>? buttons;
  String? trackingParams;

  MusicQueueHeaderRenderer({
    this.title,
    this.subtitle,
    this.buttons,
    this.trackingParams,
  });

  factory MusicQueueHeaderRenderer.fromJson(Map<String, dynamic> json) =>
      MusicQueueHeaderRenderer(
        title: json["title"] == null ? null : Title.fromJson(json["title"]),
        subtitle:
            json["subtitle"] == null ? null : Title.fromJson(json["subtitle"]),
        buttons: json["buttons"] == null
            ? []
            : List<ButtonElement>.from(
                json["buttons"]!.map((x) => ButtonElement.fromJson(x))),
        trackingParams: json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "title": title?.toJson(),
        "subtitle": subtitle?.toJson(),
        "buttons": buttons == null
            ? []
            : List<dynamic>.from(buttons!.map((x) => x.toJson())),
        "trackingParams": trackingParams,
      };
}

class ButtonElement {
  ButtonChipCloudChipRenderer? chipCloudChipRenderer;

  ButtonElement({
    this.chipCloudChipRenderer,
  });

  factory ButtonElement.fromJson(Map<String, dynamic> json) => ButtonElement(
        chipCloudChipRenderer: json["chipCloudChipRenderer"] == null
            ? null
            : ButtonChipCloudChipRenderer.fromJson(
                json["chipCloudChipRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "chipCloudChipRenderer": chipCloudChipRenderer?.toJson(),
      };
}

class ButtonChipCloudChipRenderer {
  StyleClass? style;
  Title? text;
  PurpleNavigationEndpoint? navigationEndpoint;
  String? trackingParams;
  Icon? icon;
  Accessibility? accessibilityData;
  bool? isSelected;
  String? uniqueId;

  ButtonChipCloudChipRenderer({
    this.style,
    this.text,
    this.navigationEndpoint,
    this.trackingParams,
    this.icon,
    this.accessibilityData,
    this.isSelected,
    this.uniqueId,
  });

  factory ButtonChipCloudChipRenderer.fromJson(Map<String, dynamic> json) =>
      ButtonChipCloudChipRenderer(
        style:
            json["style"] == null ? null : StyleClass.fromJson(json["style"]),
        text: json["text"] == null ? null : Title.fromJson(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : PurpleNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        trackingParams: json["trackingParams"],
        icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
        accessibilityData: json["accessibilityData"] == null
            ? null
            : Accessibility.fromJson(json["accessibilityData"]),
        isSelected: json["isSelected"],
        uniqueId: json["uniqueId"],
      );

  Map<String, dynamic> toJson() => {
        "style": style?.toJson(),
        "text": text?.toJson(),
        "navigationEndpoint": navigationEndpoint?.toJson(),
        "trackingParams": trackingParams,
        "icon": icon?.toJson(),
        "accessibilityData": accessibilityData?.toJson(),
        "isSelected": isSelected,
        "uniqueId": uniqueId,
      };
}

class PurpleNavigationEndpoint {
  String? clickTrackingParams;
  PreviewDescription? saveQueueToPlaylistCommand;

  PurpleNavigationEndpoint({
    this.clickTrackingParams,
    this.saveQueueToPlaylistCommand,
  });

  factory PurpleNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"],
        saveQueueToPlaylistCommand: json["saveQueueToPlaylistCommand"] == null
            ? null
            : PreviewDescription.fromJson(json["saveQueueToPlaylistCommand"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "saveQueueToPlaylistCommand": saveQueueToPlaylistCommand?.toJson(),
      };
}

class StyleClass {
  String? styleType;

  StyleClass({
    this.styleType,
  });

  factory StyleClass.fromJson(Map<String, dynamic> json) => StyleClass(
        styleType: json["styleType"],
      );

  Map<String, dynamic> toJson() => {
        "styleType": styleType,
      };
}

class SubHeaderChipCloud {
  ChipCloudRenderer? chipCloudRenderer;

  SubHeaderChipCloud({
    this.chipCloudRenderer,
  });

  factory SubHeaderChipCloud.fromJson(Map<String, dynamic> json) =>
      SubHeaderChipCloud(
        chipCloudRenderer: json["chipCloudRenderer"] == null
            ? null
            : ChipCloudRenderer.fromJson(json["chipCloudRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "chipCloudRenderer": chipCloudRenderer?.toJson(),
      };
}

class ChipCloudRenderer {
  List<Chip>? chips;
  String? trackingParams;

  ChipCloudRenderer({
    this.chips,
    this.trackingParams,
  });

  factory ChipCloudRenderer.fromJson(Map<String, dynamic> json) =>
      ChipCloudRenderer(
        chips: json["chips"] == null
            ? []
            : List<Chip>.from(json["chips"]!.map((x) => Chip.fromJson(x))),
        trackingParams: json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "chips": chips == null
            ? []
            : List<dynamic>.from(chips!.map((x) => x.toJson())),
        "trackingParams": trackingParams,
      };
}

class Chip {
  ChipChipCloudChipRenderer? chipCloudChipRenderer;

  Chip({
    this.chipCloudChipRenderer,
  });

  factory Chip.fromJson(Map<String, dynamic> json) => Chip(
        chipCloudChipRenderer: json["chipCloudChipRenderer"] == null
            ? null
            : ChipChipCloudChipRenderer.fromJson(json["chipCloudChipRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "chipCloudChipRenderer": chipCloudChipRenderer?.toJson(),
      };
}

class ChipChipCloudChipRenderer {
  Title? text;
  FluffyNavigationEndpoint? navigationEndpoint;
  String? trackingParams;
  Accessibility? accessibilityData;
  bool? isSelected;
  String? uniqueId;

  ChipChipCloudChipRenderer({
    this.text,
    this.navigationEndpoint,
    this.trackingParams,
    this.accessibilityData,
    this.isSelected,
    this.uniqueId,
  });

  factory ChipChipCloudChipRenderer.fromJson(Map<String, dynamic> json) =>
      ChipChipCloudChipRenderer(
        text: json["text"] == null ? null : Title.fromJson(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : FluffyNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        trackingParams: json["trackingParams"],
        accessibilityData: json["accessibilityData"] == null
            ? null
            : Accessibility.fromJson(json["accessibilityData"]),
        isSelected: json["isSelected"],
        uniqueId: json["uniqueId"],
      );

  Map<String, dynamic> toJson() => {
        "text": text?.toJson(),
        "navigationEndpoint": navigationEndpoint?.toJson(),
        "trackingParams": trackingParams,
        "accessibilityData": accessibilityData?.toJson(),
        "isSelected": isSelected,
        "uniqueId": uniqueId,
      };
}

class FluffyNavigationEndpoint {
  String? clickTrackingParams;
  QueueUpdateCommand? queueUpdateCommand;

  FluffyNavigationEndpoint({
    this.clickTrackingParams,
    this.queueUpdateCommand,
  });

  factory FluffyNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffyNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"],
        queueUpdateCommand: json["queueUpdateCommand"] == null
            ? null
            : QueueUpdateCommand.fromJson(json["queueUpdateCommand"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "queueUpdateCommand": queueUpdateCommand?.toJson(),
      };
}

class QueueUpdateCommand {
  String? queueUpdateSection;
  FetchContentsCommand? fetchContentsCommand;
  bool? dedupeAgainstLocalQueue;

  QueueUpdateCommand({
    this.queueUpdateSection,
    this.fetchContentsCommand,
    this.dedupeAgainstLocalQueue,
  });

  factory QueueUpdateCommand.fromJson(Map<String, dynamic> json) =>
      QueueUpdateCommand(
        queueUpdateSection: json["queueUpdateSection"]!,
        fetchContentsCommand: json["fetchContentsCommand"] == null
            ? null
            : FetchContentsCommand.fromJson(json["fetchContentsCommand"]),
        dedupeAgainstLocalQueue: json["dedupeAgainstLocalQueue"],
      );

  Map<String, dynamic> toJson() => {
        "queueUpdateSection": queueUpdateSection,
        "fetchContentsCommand": fetchContentsCommand?.toJson(),
        "dedupeAgainstLocalQueue": dedupeAgainstLocalQueue,
      };
}

class FetchContentsCommand {
  String? clickTrackingParams;
  FetchContentsCommandWatchEndpoint? watchEndpoint;

  FetchContentsCommand({
    this.clickTrackingParams,
    this.watchEndpoint,
  });

  factory FetchContentsCommand.fromJson(Map<String, dynamic> json) =>
      FetchContentsCommand(
        clickTrackingParams: json["clickTrackingParams"],
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : FetchContentsCommandWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "watchEndpoint": watchEndpoint?.toJson(),
      };
}

class FetchContentsCommandWatchEndpoint {
  String? playlistId;
  String? params;
  LoggingContext? loggingContext;

  FetchContentsCommandWatchEndpoint({
    this.playlistId,
    this.params,
    this.loggingContext,
  });

  factory FetchContentsCommandWatchEndpoint.fromJson(
          Map<String, dynamic> json) =>
      FetchContentsCommandWatchEndpoint(
        playlistId: json["playlistId"],
        params: json["params"],
        loggingContext: json["loggingContext"] == null
            ? null
            : LoggingContext.fromJson(json["loggingContext"]),
      );

  Map<String, dynamic> toJson() => {
        "playlistId": playlistId,
        "params": params,
        "loggingContext": loggingContext?.toJson(),
      };
}

class CurrentVideoEndpoint {
  String? clickTrackingParams;
  CurrentVideoEndpointWatchEndpoint? watchEndpoint;

  CurrentVideoEndpoint({
    this.clickTrackingParams,
    this.watchEndpoint,
  });

  factory CurrentVideoEndpoint.fromJson(Map<String, dynamic> json) =>
      CurrentVideoEndpoint(
        clickTrackingParams: json["clickTrackingParams"],
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : CurrentVideoEndpointWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "watchEndpoint": watchEndpoint?.toJson(),
      };
}

class CurrentVideoEndpointWatchEndpoint {
  String? videoId;
  String? playlistId;
  int? index;
  String? playlistSetVideoId;
  LoggingContext? loggingContext;

  CurrentVideoEndpointWatchEndpoint({
    this.videoId,
    this.playlistId,
    this.index,
    this.playlistSetVideoId,
    this.loggingContext,
  });

  factory CurrentVideoEndpointWatchEndpoint.fromJson(
          Map<String, dynamic> json) =>
      CurrentVideoEndpointWatchEndpoint(
        videoId: json["videoId"],
        playlistId: json["playlistId"]!,
        index: json["index"],
        playlistSetVideoId: json["playlistSetVideoId"],
        loggingContext: json["loggingContext"] == null
            ? null
            : LoggingContext.fromJson(json["loggingContext"]),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId,
        "playlistId": playlistId,
        "index": index,
        "playlistSetVideoId": playlistSetVideoId,
        "loggingContext": loggingContext?.toJson(),
      };
}

class PlayerOverlays {
  PlayerOverlayRenderer? playerOverlayRenderer;

  PlayerOverlays({
    this.playerOverlayRenderer,
  });

  factory PlayerOverlays.fromJson(Map<String, dynamic> json) => PlayerOverlays(
        playerOverlayRenderer: json["playerOverlayRenderer"] == null
            ? null
            : PlayerOverlayRenderer.fromJson(json["playerOverlayRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playerOverlayRenderer": playerOverlayRenderer?.toJson(),
      };
}

class PlayerOverlayRenderer {
  List<Action>? actions;
  BrowserMediaSession? browserMediaSession;

  PlayerOverlayRenderer({
    this.actions,
    this.browserMediaSession,
  });

  factory PlayerOverlayRenderer.fromJson(Map<String, dynamic> json) =>
      PlayerOverlayRenderer(
        actions: json["actions"] == null
            ? []
            : List<Action>.from(
                json["actions"]!.map((x) => Action.fromJson(x))),
        browserMediaSession: json["browserMediaSession"] == null
            ? null
            : BrowserMediaSession.fromJson(json["browserMediaSession"]),
      );

  Map<String, dynamic> toJson() => {
        "actions": actions == null
            ? []
            : List<dynamic>.from(actions!.map((x) => x.toJson())),
        "browserMediaSession": browserMediaSession?.toJson(),
      };
}

class Action {
  LikeButtonRenderer? likeButtonRenderer;

  Action({
    this.likeButtonRenderer,
  });

  factory Action.fromJson(Map<String, dynamic> json) => Action(
        likeButtonRenderer: json["likeButtonRenderer"] == null
            ? null
            : LikeButtonRenderer.fromJson(json["likeButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "likeButtonRenderer": likeButtonRenderer?.toJson(),
      };
}

class LikeButtonRenderer {
  Target? target;
  String? likeStatus;
  String? trackingParams;
  bool? likesAllowed;
  DislikeNavigationEndpoint? dislikeNavigationEndpoint;
  DislikeNavigationEndpoint? likeCommand;

  LikeButtonRenderer({
    this.target,
    this.likeStatus,
    this.trackingParams,
    this.likesAllowed,
    this.dislikeNavigationEndpoint,
    this.likeCommand,
  });

  factory LikeButtonRenderer.fromJson(Map<String, dynamic> json) =>
      LikeButtonRenderer(
        target: json["target"] == null ? null : Target.fromJson(json["target"]),
        likeStatus: json["likeStatus"],
        trackingParams: json["trackingParams"],
        likesAllowed: json["likesAllowed"],
        dislikeNavigationEndpoint: json["dislikeNavigationEndpoint"] == null
            ? null
            : DislikeNavigationEndpoint.fromJson(
                json["dislikeNavigationEndpoint"]),
        likeCommand: json["likeCommand"] == null
            ? null
            : DislikeNavigationEndpoint.fromJson(json["likeCommand"]),
      );

  Map<String, dynamic> toJson() => {
        "target": target?.toJson(),
        "likeStatus": likeStatus,
        "trackingParams": trackingParams,
        "likesAllowed": likesAllowed,
        "dislikeNavigationEndpoint": dislikeNavigationEndpoint?.toJson(),
        "likeCommand": likeCommand?.toJson(),
      };
}

class BrowserMediaSession {
  BrowserMediaSessionRenderer? browserMediaSessionRenderer;

  BrowserMediaSession({
    this.browserMediaSessionRenderer,
  });

  factory BrowserMediaSession.fromJson(Map<String, dynamic> json) =>
      BrowserMediaSession(
        browserMediaSessionRenderer: json["browserMediaSessionRenderer"] == null
            ? null
            : BrowserMediaSessionRenderer.fromJson(
                json["browserMediaSessionRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "browserMediaSessionRenderer": browserMediaSessionRenderer?.toJson(),
      };
}

class BrowserMediaSessionRenderer {
  Title? album;
  ThumbnailDetailsClass? thumbnailDetails;

  BrowserMediaSessionRenderer({
    this.album,
    this.thumbnailDetails,
  });

  factory BrowserMediaSessionRenderer.fromJson(Map<String, dynamic> json) =>
      BrowserMediaSessionRenderer(
        album: json["album"] == null ? null : Title.fromJson(json["album"]),
        thumbnailDetails: json["thumbnailDetails"] == null
            ? null
            : ThumbnailDetailsClass.fromJson(json["thumbnailDetails"]),
      );

  Map<String, dynamic> toJson() => {
        "album": album?.toJson(),
        "thumbnailDetails": thumbnailDetails?.toJson(),
      };
}

class ResponseContext {
  String? visitorData;
  List<ServiceTrackingParam>? serviceTrackingParams;

  ResponseContext({
    this.visitorData,
    this.serviceTrackingParams,
  });

  factory ResponseContext.fromJson(Map<String, dynamic> json) =>
      ResponseContext(
        visitorData: json["visitorData"],
        serviceTrackingParams: json["serviceTrackingParams"] == null
            ? []
            : List<ServiceTrackingParam>.from(json["serviceTrackingParams"]!
                .map((x) => ServiceTrackingParam.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "visitorData": visitorData,
        "serviceTrackingParams": serviceTrackingParams == null
            ? []
            : List<dynamic>.from(serviceTrackingParams!.map((x) => x.toJson())),
      };
}

class ServiceTrackingParam {
  String? service;
  List<Param>? params;

  ServiceTrackingParam({
    this.service,
    this.params,
  });

  factory ServiceTrackingParam.fromJson(Map<String, dynamic> json) =>
      ServiceTrackingParam(
        service: json["service"],
        params: json["params"] == null
            ? []
            : List<Param>.from(json["params"]!.map((x) => Param.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "service": service,
        "params": params == null
            ? []
            : List<dynamic>.from(params!.map((x) => x.toJson())),
      };
}

class Param {
  String? key;
  String? value;

  Param({
    this.key,
    this.value,
  });

  factory Param.fromJson(Map<String, dynamic> json) => Param(
        key: json["key"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "value": value,
      };
}

class VideoReporting {
  ReportFormModalRenderer? reportFormModalRenderer;

  VideoReporting({
    this.reportFormModalRenderer,
  });

  factory VideoReporting.fromJson(Map<String, dynamic> json) => VideoReporting(
        reportFormModalRenderer: json["reportFormModalRenderer"] == null
            ? null
            : ReportFormModalRenderer.fromJson(json["reportFormModalRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "reportFormModalRenderer": reportFormModalRenderer?.toJson(),
      };
}

class ReportFormModalRenderer {
  OptionsSupportedRenderers? optionsSupportedRenderers;
  String? trackingParams;
  Title? title;
  CancelButtonClass? submitButton;
  CancelButtonClass? cancelButton;
  Footer? footer;

  ReportFormModalRenderer({
    this.optionsSupportedRenderers,
    this.trackingParams,
    this.title,
    this.submitButton,
    this.cancelButton,
    this.footer,
  });

  factory ReportFormModalRenderer.fromJson(Map<String, dynamic> json) =>
      ReportFormModalRenderer(
        optionsSupportedRenderers: json["optionsSupportedRenderers"] == null
            ? null
            : OptionsSupportedRenderers.fromJson(
                json["optionsSupportedRenderers"]),
        trackingParams: json["trackingParams"],
        title: json["title"] == null ? null : Title.fromJson(json["title"]),
        submitButton: json["submitButton"] == null
            ? null
            : CancelButtonClass.fromJson(json["submitButton"]),
        cancelButton: json["cancelButton"] == null
            ? null
            : CancelButtonClass.fromJson(json["cancelButton"]),
        footer: json["footer"] == null ? null : Footer.fromJson(json["footer"]),
      );

  Map<String, dynamic> toJson() => {
        "optionsSupportedRenderers": optionsSupportedRenderers?.toJson(),
        "trackingParams": trackingParams,
        "title": title?.toJson(),
        "submitButton": submitButton?.toJson(),
        "cancelButton": cancelButton?.toJson(),
        "footer": footer?.toJson(),
      };
}

class Footer {
  List<FooterRun>? runs;

  Footer({
    this.runs,
  });

  factory Footer.fromJson(Map<String, dynamic> json) => Footer(
        runs: json["runs"] == null
            ? []
            : List<FooterRun>.from(
                json["runs"]!.map((x) => FooterRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? []
            : List<dynamic>.from(runs!.map((x) => x.toJson())),
      };
}

class FooterRun {
  String? text;
  RunNavigationEndpoint? navigationEndpoint;

  FooterRun({
    this.text,
    this.navigationEndpoint,
  });

  factory FooterRun.fromJson(Map<String, dynamic> json) => FooterRun(
        text: json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : RunNavigationEndpoint.fromJson(json["navigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "navigationEndpoint": navigationEndpoint?.toJson(),
      };
}

class RunNavigationEndpoint {
  String? clickTrackingParams;
  UrlEndpoint? urlEndpoint;

  RunNavigationEndpoint({
    this.clickTrackingParams,
    this.urlEndpoint,
  });

  factory RunNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      RunNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"],
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : UrlEndpoint.fromJson(json["urlEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "urlEndpoint": urlEndpoint?.toJson(),
      };
}

class UrlEndpoint {
  String? url;

  UrlEndpoint({
    this.url,
  });

  factory UrlEndpoint.fromJson(Map<String, dynamic> json) => UrlEndpoint(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}

class OptionsSupportedRenderers {
  OptionsRenderer? optionsRenderer;

  OptionsSupportedRenderers({
    this.optionsRenderer,
  });

  factory OptionsSupportedRenderers.fromJson(Map<String, dynamic> json) =>
      OptionsSupportedRenderers(
        optionsRenderer: json["optionsRenderer"] == null
            ? null
            : OptionsRenderer.fromJson(json["optionsRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "optionsRenderer": optionsRenderer?.toJson(),
      };
}

class OptionsRenderer {
  List<OptionsRendererItem>? items;
  String? trackingParams;

  OptionsRenderer({
    this.items,
    this.trackingParams,
  });

  factory OptionsRenderer.fromJson(Map<String, dynamic> json) =>
      OptionsRenderer(
        items: json["items"] == null
            ? []
            : List<OptionsRendererItem>.from(
                json["items"]!.map((x) => OptionsRendererItem.fromJson(x))),
        trackingParams: json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "trackingParams": trackingParams,
      };
}

class OptionsRendererItem {
  OptionSelectableItemRenderer? optionSelectableItemRenderer;

  OptionsRendererItem({
    this.optionSelectableItemRenderer,
  });

  factory OptionsRendererItem.fromJson(Map<String, dynamic> json) =>
      OptionsRendererItem(
        optionSelectableItemRenderer:
            json["optionSelectableItemRenderer"] == null
                ? null
                : OptionSelectableItemRenderer.fromJson(
                    json["optionSelectableItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "optionSelectableItemRenderer": optionSelectableItemRenderer?.toJson(),
      };
}

class OptionSelectableItemRenderer {
  Title? text;
  String? trackingParams;
  SubmitEndpoint? submitEndpoint;

  OptionSelectableItemRenderer({
    this.text,
    this.trackingParams,
    this.submitEndpoint,
  });

  factory OptionSelectableItemRenderer.fromJson(Map<String, dynamic> json) =>
      OptionSelectableItemRenderer(
        text: json["text"] == null ? null : Title.fromJson(json["text"]),
        trackingParams: json["trackingParams"],
        submitEndpoint: json["submitEndpoint"] == null
            ? null
            : SubmitEndpoint.fromJson(json["submitEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text?.toJson(),
        "trackingParams": trackingParams,
        "submitEndpoint": submitEndpoint?.toJson(),
      };
}

class SubmitEndpoint {
  String? clickTrackingParams;
  FlagEndpoint? flagEndpoint;

  SubmitEndpoint({
    this.clickTrackingParams,
    this.flagEndpoint,
  });

  factory SubmitEndpoint.fromJson(Map<String, dynamic> json) => SubmitEndpoint(
        clickTrackingParams: json["clickTrackingParams"],
        flagEndpoint: json["flagEndpoint"] == null
            ? null
            : FlagEndpoint.fromJson(json["flagEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "flagEndpoint": flagEndpoint?.toJson(),
      };
}

class FlagEndpoint {
  String? flagAction;

  FlagEndpoint({
    this.flagAction,
  });

  factory FlagEndpoint.fromJson(Map<String, dynamic> json) => FlagEndpoint(
        flagAction: json["flagAction"],
      );

  Map<String, dynamic> toJson() => {
        "flagAction": flagAction,
      };
}
