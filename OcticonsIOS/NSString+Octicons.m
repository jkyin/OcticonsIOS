//
//  NSString+Octicons.m
//  OcticonsIOS
//
//  Created by Jackson Harper on 9/24/13.
//  Copyright (c) 2013 SyntaxTree, Inc. All rights reserved.
//

#import "NSString+Octicons.h"

@implementation NSString (Octicons)



+ (OCTIcon)octicon_enumForIconIdentifier:(NSString *)string
{
    NSDictionary *enums = [self enumDictionary];
    return [enums[string] integerValue];
}

+ (NSString *)octicon_iconStringForEnum:(OCTIcon)value
{
    return [self octiconIcons][value];
}

+ (NSString *)octicon_iconStringForIconIdentifier:(NSString*)identifier;
{
    return [self octicon_iconStringForEnum:[self octicon_enumForIconIdentifier:identifier]];
}

+ (NSArray*)octiconIcons
{
    static NSArray *octiconIcons;
    if (!octiconIcons) {
        octiconIcons = @[@"\uf02d",
						 @"\uf08a",
						 @"\uf08e",
						 @"\uf08b",
						 @"\uf03f",
						 @"\uf040",
						 @"\uf03e",
						 @"\uf0a0",
						 @"\uf0a1",
						 @"\uf071",
						 @"\uf09f",
						 @"\uf03d",
						 @"\uf069",
						 @"\uf007",
						 @"\uf07b",
						 @"\uf048",
						 @"\uf091",
						 @"\uf068",
						 @"\uf03a",
						 @"\uf076",
						 @"\uf0a3",
						 @"\uf0a4",
						 @"\uf078",
						 @"\uf0a2",
						 @"\uf084",
						 @"\uf035",
						 @"\uf046",
						 @"\uf00b",
						 @"\uf00c",
						 @"\uf05f",
						 @"\uf065",
						 @"\uf02b",
						 @"\uf06f",
						 @"\uf04f",
						 @"\uf045",
						 @"\uf07d",
						 @"\uf096",
						 @"\uf056",
						 @"\uf057",
						 @"\uf27c",
						 @"\uf038",
						 @"\uf04d",
						 @"\uf06b",
						 @"\uf099",
						 @"\uf06d",
						 @"\uf06c",
						 @"\uf06e",
						 @"\uf09a",
						 @"\uf04e",
						 @"\uf01e",
						 @"\uf01d",
						 @"\uf086",
						 @"\uf094",
						 @"\uf010",
						 @"\uf016",
						 @"\uf095",
						 @"\uf012",
						 @"\uf014",
						 @"\uf017",
						 @"\uf0b1",
						 @"\uf0b0",
						 @"\uf011",
						 @"\uf013",
						 @"\uf02f",
						 @"\uf042",
						 @"\uf00e",
						 @"\uf079",
						 @"\uf07a",
						 @"\uf00f",
						 @"\uf08c",
						 @"\uf020",
						 @"\uf098",
						 @"\uf09b",
						 @"\uf01f",
						 @"\uf0ac",
						 @"\uf021",
						 @"\uf023",
						 @"\uf009",
						 @"\uf090",
						 @"\uf0b6",
						 @"\uf043",
						 @"\uf07e",
						 @"\uf08d",
						 @"\uf070",
						 @"\uf09e",
						 @"\uf09d",
						 @"\uf059",
						 @"\uf028",
						 @"\uf026",
						 @"\uf027",
						 @"\uf019",
						 @"\uf072",
						 @"\uf0a5",
						 @"\uf0a6",
						 @"\uf073",
						 @"\uf049",
						 @"\uf00d",
						 @"\uf000",
						 @"\uf05c",
						 @"\uf07f",
						 @"\uf062",
						 @"\uf061",
						 @"\uf060",
						 @"\uf06a",
						 @"\uf036",
						 @"\uf032",
						 @"\uf092",
						 @"\uf03b",
						 @"\uf03c",
						 @"\uf051",
						 @"\uf00a",
						 @"\uf0ae",
						 @"\uf077",
						 @"\uf089",
						 @"\uf075",
						 @"\uf025",
						 @"\uf024",
						 @"\uf0a8",
						 @"\uf074",
						 @"\uf0a9",
						 @"\uf0a7",
						 @"\uf080",
						 @"\uf09c",
						 @"\uf008",
						 @"\uf037",
						 @"\uf058",
						 @"\uf018",
						 @"\uf01a",
						 @"\uf01c",
						 @"\uf01b",
						 @"\uf041",
						 @"\uf05d",
						 @"\uf0af",
						 @"\uf052",
						 @"\uf053",
						 @"\uf085",
						 @"\uf02c",
						 @"\uf063",
						 @"\uf030",
						 @"\uf050",
						 @"\uf001",
						 @"\uf04c",
						 @"\uf003",
						 @"\uf004",
						 @"\uf04a",
						 @"\uf002",
						 @"\uf006",
						 @"\uf005",
						 @"\uf04b",
						 @"\uf033",
						 @"\uf034",
						 @"\uf047",
						 @"\uf066",
						 @"\uf067",
						 @"\uf02e",
						 @"\uf097",
						 @"\uf07c",
						 @"\uf0b2",
						 @"\uf02a",
						 @"\uf082",
						 @"\uf083",
						 @"\uf08f",
						 @"\uf087",
						 @"\uf015",
						 @"\uf054",
						 @"\uf055",
						 @"\uf088",
						 @"\uf05e",
						 @"\uf031",
						 @"\uf05b",
						 @"\uf044",
						 @"\uf05a",
						 @"\uf0aa",
						 @"\uf039",
						 @"\uf064",
						 @"\uf081",
						 @"\u26A1"];
    }
    return octiconIcons;
}

+ (NSDictionary*)enumDictionary
{
	static NSDictionary *enumDictionary;
	if (!enumDictionary) {
		enumDictionary = @{
			   @"Alert": @(OCTIconAlert),
			   @"AlignmentAlign": @(OCTIconAlignmentAlign),
			   @"AlignmentAlignedTo": @(OCTIconAlignmentAlignedTo),
			   @"AlignmentUnalign": @(OCTIconAlignmentUnalign),
			   @"ArrowDown": @(OCTIconArrowDown),
			   @"ArrowLeft": @(OCTIconArrowLeft),
			   @"ArrowRight": @(OCTIconArrowRight),
			   @"ArrowSmallDown": @(OCTIconArrowSmallDown),
			   @"ArrowSmallLeft": @(OCTIconArrowSmallLeft),
			   @"ArrowSmallRight": @(OCTIconArrowSmallRight),
			   @"ArrowSmallUp": @(OCTIconArrowSmallUp),
			   @"ArrowUp": @(OCTIconArrowUp),
			   @"Beer": @(OCTIconBeer),
			   @"Book": @(OCTIconBook),
			   @"Bookmark": @(OCTIconBookmark),
			   @"Broadcast": @(OCTIconBroadcast),
			   @"Bug": @(OCTIconBug),
			   @"Calendar": @(OCTIconCalendar),
			   @"Check": @(OCTIconCheck),
			   @"Checklist": @(OCTIconChecklist),
			   @"ChevronDown": @(OCTIconChevronDown),
			   @"ChevronLeft": @(OCTIconChevronLeft),
			   @"ChevronRight": @(OCTIconChevronRight),
			   @"ChevronUp": @(OCTIconChevronUp),
			   @"CircleSlash": @(OCTIconCircleSlash),
			   @"Clippy": @(OCTIconClippy),
			   @"Clock": @(OCTIconClock),
			   @"CloudDownload": @(OCTIconCloudDownload),
			   @"CloudUpload": @(OCTIconCloudUpload),
			   @"Code": @(OCTIconCode),
			   @"ColorMode": @(OCTIconColorMode),
			   @"Comment": @(OCTIconComment),
			   @"CommentAdd": @(OCTIconCommentAdd),
			   @"CommentDiscussion": @(OCTIconCommentDiscussion),
			   @"CreditCard": @(OCTIconCreditCard),
			   @"Dashboard": @(OCTIconDashboard),
			   @"Database": @(OCTIconDatabase),
			   @"DeviceCamera": @(OCTIconDeviceCamera),
			   @"DeviceCameraVideo": @(OCTIconDeviceCameraVideo),
			   @"DeviceDesktop": @(OCTIconDeviceDesktop),
			   @"DeviceMobile": @(OCTIconDeviceMobile),
			   @"Diff": @(OCTIconDiff),
			   @"DiffAdded": @(OCTIconDiffAdded),
			   @"DiffIgnored": @(OCTIconDiffIgnored),
			   @"DiffModified": @(OCTIconDiffModified),
			   @"DiffRemoved": @(OCTIconDiffRemoved),
			   @"DiffRenamed": @(OCTIconDiffRenamed),
			   @"Ellipsis": @(OCTIconEllipsis),
			   @"Eye": @(OCTIconEye),
			   @"EyeUnwatch": @(OCTIconEyeUnwatch),
			   @"EyeWatch": @(OCTIconEyeWatch),
			   @"FileAdd": @(OCTIconFileAdd),
			   @"FileBinary": @(OCTIconFileBinary),
			   @"FileCode": @(OCTIconFileCode),
			   @"FileDirectory": @(OCTIconFileDirectory),
			   @"FileDirectoryCreate": @(OCTIconFileDirectoryCreate),
			   @"FileMedia": @(OCTIconFileMedia),
			   @"FilePdf": @(OCTIconFilePdf),
			   @"FileSubmodule": @(OCTIconFileSubmodule),
			   @"FileSymlinkDirectory": @(OCTIconFileSymlinkDirectory),
			   @"FileSymlinkFile": @(OCTIconFileSymlinkFile),
			   @"FileText": @(OCTIconFileText),
			   @"FileZip": @(OCTIconFileZip),
			   @"Gear": @(OCTIconGear),
			   @"Gift": @(OCTIconGift),
			   @"Gist": @(OCTIconGist),
			   @"GistFork": @(OCTIconGistFork),
			   @"GistNew": @(OCTIconGistNew),
			   @"GistPrivate": @(OCTIconGistPrivate),
			   @"GistSecret": @(OCTIconGistSecret),
			   @"GitBranch": @(OCTIconGitBranch),
			   @"GitBranchCreate": @(OCTIconGitBranchCreate),
			   @"GitBranchDelete": @(OCTIconGitBranchDelete),
			   @"GitCommit": @(OCTIconGitCommit),
			   @"GitCompare": @(OCTIconGitCompare),
			   @"GitForkPrivate": @(OCTIconGitForkPrivate),
			   @"GitMerge": @(OCTIconGitMerge),
			   @"GitPullRequest": @(OCTIconGitPullRequest),
			   @"GitPullRequestAbandoned": @(OCTIconGitPullRequestAbandoned),
			   @"Globe": @(OCTIconGlobe),
			   @"Graph": @(OCTIconGraph),
			   @"History": @(OCTIconHistory),
			   @"Home": @(OCTIconHome),
			   @"HorizontalRule": @(OCTIconHorizontalRule),
			   @"Hourglass": @(OCTIconHourglass),
			   @"Hubot": @(OCTIconHubot),
			   @"Info": @(OCTIconInfo),
			   @"IssueClosed": @(OCTIconIssueClosed),
			   @"IssueOpened": @(OCTIconIssueOpened),
			   @"IssueReopened": @(OCTIconIssueReopened),
			   @"Jersey": @(OCTIconJersey),
			   @"JumpDown": @(OCTIconJumpDown),
			   @"JumpLeft": @(OCTIconJumpLeft),
			   @"JumpRight": @(OCTIconJumpRight),
			   @"JumpUp": @(OCTIconJumpUp),
			   @"Key": @(OCTIconKey),
			   @"Keyboard": @(OCTIconKeyboard),
			   @"LightBulb": @(OCTIconLightBulb),
			   @"Link": @(OCTIconLink),
			   @"LinkExternal": @(OCTIconLinkExternal),
			   @"ListOrdered": @(OCTIconListOrdered),
			   @"ListUnordered": @(OCTIconListUnordered),
			   @"Location": @(OCTIconLocation),
			   @"Lock": @(OCTIconLock),
			   @"LogIn": @(OCTIconLogIn),
			   @"LogOut": @(OCTIconLogOut),
			   @"LogoGithub": @(OCTIconLogoGithub),
			   @"Mail": @(OCTIconMail),
			   @"MailRead": @(OCTIconMailRead),
			   @"MailReply": @(OCTIconMailReply),
			   @"MarkGithub": @(OCTIconMarkGithub),
			   @"MarkTwitter": @(OCTIconMarkTwitter),
			   @"Megaphone": @(OCTIconMegaphone),
			   @"Microscope": @(OCTIconMicroscope),
			   @"Milestone": @(OCTIconMilestone),
			   @"MirrorPrivate": @(OCTIconMirrorPrivate),
			   @"MirrorPublic": @(OCTIconMirrorPublic),
			   @"MoveDown": @(OCTIconMoveDown),
			   @"MoveLeft": @(OCTIconMoveLeft),
			   @"MoveRight": @(OCTIconMoveRight),
			   @"MoveUp": @(OCTIconMoveUp),
			   @"Mute": @(OCTIconMute),
			   @"NoNewline": @(OCTIconNoNewline),
			   @"Octoface": @(OCTIconOctoface),
			   @"Organization": @(OCTIconOrganization),
			   @"Pencil": @(OCTIconPencil),
			   @"Person": @(OCTIconPerson),
			   @"PersonAdd": @(OCTIconPersonAdd),
			   @"PersonFollow": @(OCTIconPersonFollow),
			   @"PersonRemove": @(OCTIconPersonRemove),
			   @"Pin": @(OCTIconPin),
			   @"Plus": @(OCTIconPlus),
			   @"Podium": @(OCTIconPodium),
			   @"PrimitiveDot": @(OCTIconPrimitiveDot),
			   @"PrimitiveSquare": @(OCTIconPrimitiveSquare),
			   @"Pulse": @(OCTIconPulse),
			   @"Question": @(OCTIconQuestion),
			   @"Quote": @(OCTIconQuote),
			   @"RadioTower": @(OCTIconRadioTower),
			   @"RemoveClose": @(OCTIconRemoveClose),
			   @"Repo": @(OCTIconRepo),
			   @"RepoClone": @(OCTIconRepoClone),
			   @"RepoCreate": @(OCTIconRepoCreate),
			   @"RepoDelete": @(OCTIconRepoDelete),
			   @"RepoForcePush": @(OCTIconRepoForcePush),
			   @"RepoForked": @(OCTIconRepoForked),
			   @"RepoPull": @(OCTIconRepoPull),
			   @"RepoPush": @(OCTIconRepoPush),
			   @"RepoSync": @(OCTIconRepoSync),
			   @"Rocket": @(OCTIconRocket),
			   @"Rss": @(OCTIconRss),
			   @"Ruby": @(OCTIconRuby),
			   @"ScreenFull": @(OCTIconScreenFull),
			   @"ScreenNormal": @(OCTIconScreenNormal),
			   @"Search": @(OCTIconSearch),
			   @"Server": @(OCTIconServer),
			   @"Settings": @(OCTIconSettings),
			   @"Squirrel": @(OCTIconSquirrel),
			   @"Star": @(OCTIconStar),
			   @"StarAdd": @(OCTIconStarAdd),
			   @"StarDelete": @(OCTIconStarDelete),
			   @"Stop": @(OCTIconStop),
			   @"Sync": @(OCTIconSync),
			   @"Tag": @(OCTIconTag),
			   @"TagAdd": @(OCTIconTagAdd),
			   @"TagRemove": @(OCTIconTagRemove),
			   @"Telescope": @(OCTIconTelescope),
			   @"ThreeBars": @(OCTIconThreeBars),
			   @"Tools": @(OCTIconTools),
			   @"TriangleDown": @(OCTIconTriangleDown),
			   @"TriangleLeft": @(OCTIconTriangleLeft),
			   @"TriangleRight": @(OCTIconTriangleRight),
			   @"TriangleUp": @(OCTIconTriangleUp),
			   @"Unfold": @(OCTIconUnfold),
			   @"Versions": @(OCTIconVersions),
			   @"X": @(OCTIconX),
			   @"Zap": @(OCTIconZap),
		};
	}
	return enumDictionary;
}

@end
