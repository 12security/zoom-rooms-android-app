.class public Lus/zoom/androidlib/util/AndroidAppUtil;
.super Ljava/lang/Object;
.source "AndroidAppUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;,
        Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;,
        Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;,
        Lus/zoom/androidlib/util/AndroidAppUtil$ResolbeInfoComparator;,
        Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;
    }
.end annotation


# static fields
.field private static final ACTION_MEETING_INVITE:Ljava/lang/String; = ".intent.action.MeetingInvite"

.field private static final DAY_OF_WEEK:[Ljava/lang/String;

.field public static final DEF_REMINDER_MINUTES:I = 0xf

.field public static EXTRA_DATE:Ljava/lang/String; = "meetingDate"

.field public static EXTRA_IS_REPEAT:Ljava/lang/String; = "meetingIsRepeat"

.field public static EXTRA_MEETING_ID:Ljava/lang/String; = "meetingId"

.field public static EXTRA_MEETING_PSW:Ljava/lang/String; = "meetingPassword"

.field public static EXTRA_MEETING_RAW_PSW:Ljava/lang/String; = "meetingRawPassword"

.field public static EXTRA_SUBJECT:Ljava/lang/String; = "android.intent.extra.SUBJECT"

.field public static EXTRA_TEXT:Ljava/lang/String; = "android.intent.extra.TEXT"

.field public static EXTRA_TIME:Ljava/lang/String; = "meetingTime"

.field public static EXTRA_TOPIC:Ljava/lang/String; = "meetingTopic"

.field public static final FILE_TYPE_APK:I = 0x0

.field public static final FILE_TYPE_AUDIO:I = 0x6

.field public static final FILE_TYPE_DOC:I = 0x4

.field public static final FILE_TYPE_FOLDER:I = 0x64

.field public static final FILE_TYPE_HTML:I = 0x2

.field public static final FILE_TYPE_ICS:I = 0x8

.field public static final FILE_TYPE_IMAGE:I = 0x3

.field public static final FILE_TYPE_TEXT:I = 0x1

.field public static final FILE_TYPE_UNKNOWN:I = -0x1

.field public static final FILE_TYPE_VIDEO:I = 0x5

.field public static final FILE_TYPE_ZIP:I = 0x7

.field private static final GSF_PACKAGE:Ljava/lang/String; = "com.google.android.gsf"

.field public static final IMAGE_MIME_TYPE_GIF:Ljava/lang/String; = "image/gif"

.field public static final IMAGE_MIME_TYPE_JPG:Ljava/lang/String; = "image/jpeg"

.field public static final IMAGE_MIME_TYPE_PNG:Ljava/lang/String; = "image/png"

.field public static final IMAGE_MIME_TYPE_UNKNOW:Ljava/lang/String; = "unknow"

.field private static final MIMTYPE_FOLDER:Ljava/lang/String; = "application/vnd.google-apps.folder"

.field private static final TAG:Ljava/lang/String; = "AndroidAppUtil"

.field private static final mimeTypesTable:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x4d

    .line 112
    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ".apk"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "application/vnd.android.package-archive"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 113
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget v3, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_apk:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ".c"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ".conf"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    .line 116
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ".cpp"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    .line 117
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ".cxx"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ".php"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    .line 119
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, ".perl"

    aput-object v8, v2, v4

    const-string v8, "text/plain"

    aput-object v8, v2, v5

    .line 120
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v6

    sget v8, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, ".py"

    aput-object v9, v2, v4

    const-string v9, "text/plain"

    aput-object v9, v2, v5

    .line 121
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v6

    sget v9, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v7

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".vbs"

    aput-object v10, v2, v4

    const-string v10, "text/plain"

    aput-object v10, v2, v5

    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x8

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".h"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 123
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0x9

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".java"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0xa

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".s"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0xb

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".S"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 126
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0xc

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".log"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 127
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0xd

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".prop"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 128
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0xe

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".rc"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0xf

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".xml"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 130
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0x10

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".sh"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 131
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0x11

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".bat"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0x12

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".cmd"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 133
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0x13

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".txt"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 134
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0x14

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".js"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 135
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0x15

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".lrc"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 137
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0x16

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".ini"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 138
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0x17

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".inf"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 139
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0x18

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".properties"

    aput-object v11, v2, v4

    const-string v11, "text/plain"

    aput-object v11, v2, v5

    .line 140
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0x19

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".htm"

    aput-object v11, v2, v4

    const-string v11, "text/html"

    aput-object v11, v2, v5

    .line 142
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_html:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0x1a

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".html"

    aput-object v11, v2, v4

    const-string v11, "text/html"

    aput-object v11, v2, v5

    .line 143
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    sget v11, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_html:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v7

    const/16 v11, 0x1b

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, ".ics"

    aput-object v11, v2, v4

    const-string v11, "text/calendar"

    aput-object v11, v2, v5

    .line 145
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_txt:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x1c

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".bmp"

    aput-object v10, v2, v4

    const-string v10, "image/bmp"

    aput-object v10, v2, v5

    .line 147
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_image:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x1d

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".gif"

    aput-object v10, v2, v4

    const-string v10, "image/gif"

    aput-object v10, v2, v5

    .line 148
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_image:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x1e

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".jpeg"

    aput-object v10, v2, v4

    const-string v10, "image/jpeg"

    aput-object v10, v2, v5

    .line 149
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_image:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x1f

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".jpg"

    aput-object v10, v2, v4

    const-string v10, "image/jpeg"

    aput-object v10, v2, v5

    .line 150
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_image:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x20

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".png"

    aput-object v10, v2, v4

    const-string v10, "image/png"

    aput-object v10, v2, v5

    .line 151
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_image:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x21

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".3gp"

    aput-object v10, v2, v4

    const-string v10, "video/3gpp"

    aput-object v10, v2, v5

    .line 153
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_video:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x22

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".asf"

    aput-object v10, v2, v4

    const-string v10, "video/x-ms-asf"

    aput-object v10, v2, v5

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_video:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x23

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".avi"

    aput-object v10, v2, v4

    const-string v10, "video/x-msvideo"

    aput-object v10, v2, v5

    .line 155
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_video:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x24

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".m4u"

    aput-object v10, v2, v4

    const-string v10, "video/vnd.mpegurl"

    aput-object v10, v2, v5

    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_video:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x25

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".m4v"

    aput-object v10, v2, v4

    const-string v10, "video/x-m4v"

    aput-object v10, v2, v5

    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_video:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x26

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".mov"

    aput-object v10, v2, v4

    const-string v10, "video/quicktime"

    aput-object v10, v2, v5

    .line 158
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_video:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x27

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".mp4"

    aput-object v10, v2, v4

    const-string v10, "video/mp4"

    aput-object v10, v2, v5

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_video:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x28

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".mpe"

    aput-object v10, v2, v4

    const-string v10, "video/mpeg"

    aput-object v10, v2, v5

    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_video:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x29

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".mpeg"

    aput-object v10, v2, v4

    const-string v10, "video/mpeg"

    aput-object v10, v2, v5

    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_video:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x2a

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".mpg"

    aput-object v10, v2, v4

    const-string v10, "video/mpeg"

    aput-object v10, v2, v5

    .line 162
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_video:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x2b

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".mpg4"

    aput-object v10, v2, v4

    const-string v10, "video/mp4"

    aput-object v10, v2, v5

    .line 163
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_video:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x2c

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".wmv"

    aput-object v10, v2, v4

    const-string v10, "video/x-ms-wmv"

    aput-object v10, v2, v5

    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_video:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x2d

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".rmvb"

    aput-object v10, v2, v4

    const-string v10, "video/x-pn-realaudio"

    aput-object v10, v2, v5

    .line 165
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_video:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x2e

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".m3u"

    aput-object v10, v2, v4

    const-string v10, "audio/x-mpegurl"

    aput-object v10, v2, v5

    .line 167
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_audio:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x2f

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".m4a"

    aput-object v10, v2, v4

    const-string v10, "audio/mp4a-latm"

    aput-object v10, v2, v5

    .line 168
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_audio:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x30

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".m4b"

    aput-object v10, v2, v4

    const-string v10, "audio/mp4a-latm"

    aput-object v10, v2, v5

    .line 169
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_audio:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x31

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".m4p"

    aput-object v10, v2, v4

    const-string v10, "audio/mp4a-latm"

    aput-object v10, v2, v5

    .line 170
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_audio:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x32

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".mp2"

    aput-object v10, v2, v4

    const-string v10, "audio/x-mpeg"

    aput-object v10, v2, v5

    .line 171
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_audio:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x33

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".mp3"

    aput-object v10, v2, v4

    const-string v10, "audio/x-mpeg"

    aput-object v10, v2, v5

    .line 172
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_audio:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x34

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".mpga"

    aput-object v10, v2, v4

    const-string v10, "audio/mpeg"

    aput-object v10, v2, v5

    .line 173
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_audio:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x35

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".ogg"

    aput-object v10, v2, v4

    const-string v10, "audio/ogg"

    aput-object v10, v2, v5

    .line 174
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_audio:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x36

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".wav"

    aput-object v10, v2, v4

    const-string v10, "audio/x-wav"

    aput-object v10, v2, v5

    .line 175
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_audio:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x37

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".wma"

    aput-object v10, v2, v4

    const-string v10, "audio/x-ms-wma"

    aput-object v10, v2, v5

    .line 176
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_audio:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x38

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".doc"

    aput-object v10, v2, v4

    const-string v10, "application/msword"

    aput-object v10, v2, v5

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_doc:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x39

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".docx"

    aput-object v10, v2, v4

    const-string v10, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    aput-object v10, v2, v5

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_doc:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x3a

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".xls"

    aput-object v10, v2, v4

    const-string v10, "application/vnd.ms-excel"

    aput-object v10, v2, v5

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_xls:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x3b

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".xlsx"

    aput-object v10, v2, v4

    const-string v10, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    aput-object v10, v2, v5

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_xls:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x3c

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".msg"

    aput-object v10, v2, v4

    const-string v10, "application/vnd.ms-outlook"

    aput-object v10, v2, v5

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_unknown:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x3d

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".pdf"

    aput-object v10, v2, v4

    const-string v10, "application/pdf"

    aput-object v10, v2, v5

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_pdf:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x3e

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".pps"

    aput-object v10, v2, v4

    const-string v10, "application/vnd.ms-powerpoint"

    aput-object v10, v2, v5

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_ppt:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x3f

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".ppt"

    aput-object v10, v2, v4

    const-string v10, "application/vnd.ms-powerpoint"

    aput-object v10, v2, v5

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_ppt:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x40

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".pptx"

    aput-object v10, v2, v4

    const-string v10, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    aput-object v10, v2, v5

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_ppt:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x41

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".rtf"

    aput-object v10, v2, v4

    const-string v10, "application/rtf"

    aput-object v10, v2, v5

    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_doc:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x42

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".wps"

    aput-object v10, v2, v4

    const-string v10, "application/vnd.ms-works"

    aput-object v10, v2, v5

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_doc:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x43

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".epub"

    aput-object v10, v2, v4

    const-string v10, "application/epub+zip"

    aput-object v10, v2, v5

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_epud:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x44

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".gtar"

    aput-object v10, v2, v4

    const-string v10, "application/x-gtar"

    aput-object v10, v2, v5

    .line 191
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_zip:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x45

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".gz"

    aput-object v10, v2, v4

    const-string v10, "application/x-gzip"

    aput-object v10, v2, v5

    .line 192
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_zip:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x46

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".jar"

    aput-object v10, v2, v4

    const-string v10, "application/java-archive"

    aput-object v10, v2, v5

    .line 193
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_zip:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x47

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".tar"

    aput-object v10, v2, v4

    const-string v10, "application/x-tar"

    aput-object v10, v2, v5

    .line 194
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_zip:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x48

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".tgz"

    aput-object v10, v2, v4

    const-string v10, "application/x-compressed"

    aput-object v10, v2, v5

    .line 195
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_zip:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x49

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".z"

    aput-object v10, v2, v4

    const-string v10, "application/x-compress"

    aput-object v10, v2, v5

    .line 196
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_zip:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x4a

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".zip"

    aput-object v10, v2, v4

    const-string v10, "application/x-zip-compressed"

    aput-object v10, v2, v5

    .line 197
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_zip:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x4b

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, ".rar"

    aput-object v10, v2, v4

    const-string v10, "application/x-rar-compressed"

    aput-object v10, v2, v5

    .line 198
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v6

    sget v10, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_zip:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v7

    const/16 v10, 0x4c

    aput-object v2, v0, v10

    sput-object v0, Lus/zoom/androidlib/util/AndroidAppUtil;->mimeTypesTable:[[Ljava/lang/Object;

    .line 1286
    new-array v0, v9, [Ljava/lang/String;

    const-string v2, "SU"

    aput-object v2, v0, v4

    const-string v2, "MO"

    aput-object v2, v0, v5

    const-string v2, "TU"

    aput-object v2, v0, v6

    const-string v2, "WE"

    aput-object v2, v0, v7

    const-string v2, "TH"

    aput-object v2, v0, v1

    const-string v1, "FR"

    aput-object v1, v0, v3

    const-string v1, "SA"

    aput-object v1, v0, v8

    sput-object v0, Lus/zoom/androidlib/util/AndroidAppUtil;->DAY_OF_WEEK:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;I)V
    .locals 0

    .line 60
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/util/AndroidAppUtil;->onSelectSelectImageItem(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;I)V

    return-void
.end method

.method private static action(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1613
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->hasActivityForIntentIgnoreSelf(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 1616
    :cond_0
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->hasActivityForIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 1621
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static addImageToGallery(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    const-string v0, "image/jpeg"

    .line 1390
    invoke-static {p0, p1, v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->addImageToGallery(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static addImageToGallery(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    .line 1394
    invoke-static {p2}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "unknow"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 1400
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1403
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1405
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_data"

    .line 1407
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "datetaken"

    .line 1408
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_added"

    .line 1409
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_modified"

    .line 1410
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "mime_type"

    .line 1411
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "orientation"

    .line 1412
    invoke-static {v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->getJpegRotation(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1414
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1416
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1418
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private static addNewCalendarEvent(Landroid/content/Context;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.WRITE_CALENDAR"
    .end annotation

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 1100
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "dtstart"

    .line 1102
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "title"

    .line 1103
    invoke-virtual {v2, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p7, "description"

    .line 1104
    invoke-virtual {v2, p7, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p7, "calendar_id"

    .line 1105
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "eventLocation"

    .line 1106
    invoke-virtual {v2, p1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "eventTimezone"

    .line 1107
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hasAlarm"

    const/4 p2, 0x1

    .line 1108
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    invoke-static {p10}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "rrule"

    .line 1111
    invoke-virtual {v2, p1, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "duration"

    .line 1112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "P"

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p5, p3

    const-wide/16 p3, 0x3e8

    div-long/2addr p5, p3

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "S"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "dtend"

    .line 1114
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1117
    :goto_0
    sget-object p1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 1119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 1120
    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    return-wide v0

    .line 1126
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    const/16 p3, 0xf

    .line 1128
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/util/AndroidAppUtil;->addReminder(Landroid/content/Context;JI)J

    return-wide p1
.end method

.method public static addNewCalendarEvent(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.READ_CALENDAR",
            "android.permission.WRITE_CALENDAR"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1060
    invoke-static/range {v0 .. v9}, Lus/zoom/androidlib/util/AndroidAppUtil;->addNewCalendarEvent(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static addNewCalendarEvent(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 13
    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.READ_CALENDAR",
            "android.permission.WRITE_CALENDAR"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1067
    :try_start_0
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->selectDefaultCalendar(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    move-object v2, p0

    move-wide v5, p2

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    .line 1071
    invoke-static/range {v2 .. v12}, Lus/zoom/androidlib/util/AndroidAppUtil;->addNewCalendarEvent(Landroid/content/Context;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v0
.end method

.method public static addNewCalendarEvent(Landroid/content/Context;Lus/zoom/androidlib/data/CalendarResult;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 13
    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.READ_CALENDAR",
            "android.permission.WRITE_CALENDAR"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1082
    :try_start_0
    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/util/AndroidAppUtil;->selectDefaultCalendar(Landroid/content/Context;Lus/zoom/androidlib/data/CalendarResult;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    move-object v2, p0

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    .line 1086
    invoke-static/range {v2 .. v12}, Lus/zoom/androidlib/util/AndroidAppUtil;->addNewCalendarEvent(Landroid/content/Context;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v0
.end method

.method private static addReminder(Landroid/content/Context;JI)J
    .locals 4
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.WRITE_CALENDAR"
    .end annotation

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 1140
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "minutes"

    .line 1142
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "event_id"

    .line 1143
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "method"

    const/4 p2, 0x1

    .line 1144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1146
    sget-object p1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 1148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1149
    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    return-wide v0

    .line 1155
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static appExists(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 326
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 327
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v1
.end method

.method private static buildByDay(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 1289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1290
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x7

    .line 1291
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BYDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lus/zoom/androidlib/util/AndroidAppUtil;->DAY_OF_WEEK:[Ljava/lang/String;

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildCalendarRrule(Ljava/util/Date;Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;I)Ljava/lang/String;
    .locals 4

    .line 1185
    sget-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->NONE:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FREQ="

    .line 1191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    sget-object v2, Lus/zoom/androidlib/util/AndroidAppUtil$2;->$SwitchMap$us$zoom$androidlib$util$AndroidAppUtil$EventRepeatType:[I

    invoke-virtual {p1}, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "YEARLY;"

    .line 1212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v2, "MONTHLY;"

    .line 1209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v0, "WEEKLY;INTERVAL=2;"

    .line 1206
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v0, "WEEKLY;"

    .line 1202
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v2, "WEEKLY;"

    .line 1198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string v2, "DAILY;"

    .line 1195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-lez p2, :cond_1

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COUNT="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "WKST=SU"

    .line 1220
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    const-string p2, ";"

    .line 1223
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->buildByDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    :cond_2
    sget-object p0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->WORKDAY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    if-ne p1, p0, :cond_3

    const-string p0, ";BYDAY=MO,TU,WE,TH,FR"

    .line 1228
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static buildCalendarRrule(Ljava/util/Date;Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;Ljava/util/Date;)Ljava/lang/String;
    .locals 8

    .line 1235
    sget-object v0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->NONE:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FREQ="

    .line 1241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    sget-object v2, Lus/zoom/androidlib/util/AndroidAppUtil$2;->$SwitchMap$us$zoom$androidlib$util$AndroidAppUtil$EventRepeatType:[I

    invoke-virtual {p1}, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "YEARLY;"

    .line 1262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v2, "MONTHLY;"

    .line 1259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v0, "WEEKLY;INTERVAL=2;"

    .line 1256
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v0, "WEEKLY;"

    .line 1252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v2, "WEEKLY;"

    .line 1248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string v2, "DAILY;"

    .line 1245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v3, 0x0

    .line 1266
    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd-hhmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 1268
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 1269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNTIL="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2d

    const/16 v4, 0x54

    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Z;"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "WKST=SU"

    .line 1272
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    const-string p2, ";"

    .line 1275
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->buildByDay(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    :cond_2
    sget-object p0, Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;->WORKDAY:Lus/zoom/androidlib/util/AndroidAppUtil$EventRepeatType;

    if-ne p1, p0, :cond_3

    const-string p0, ";BYDAY=MO,TU,WE,TH,FR"

    .line 1280
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static buildIntentToOpenFile(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;
    .locals 1

    .line 1646
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1647
    invoke-static {v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->getMimeTypeOfFile(Ljava/lang/String;)Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1651
    :cond_0
    invoke-static {p0, p1, v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->buildIntentToOpenFile(Landroid/content/Context;Ljava/io/File;Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static buildIntentToOpenFile(Landroid/content/Context;Ljava/io/File;Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;)Landroid/content/Intent;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 1659
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 1660
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1661
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1663
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1664
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/androidlib/R$string;->zm_app_provider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x1

    .line 1665
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 1667
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 1669
    :goto_0
    iget-object p1, p2, Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    iget p0, p2, Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;->fileType:I

    const/4 p1, 0x6

    if-eq p0, p1, :cond_2

    iget p0, p2, Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;->fileType:I

    const/4 p1, 0x5

    if-ne p0, p1, :cond_3

    :cond_2
    const-string p0, "oneshot"

    const/4 p1, 0x0

    .line 1673
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "configchange"

    .line 1674
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static buildIntentToShareFile(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;
    .locals 1

    .line 1680
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1681
    invoke-static {v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->getMimeTypeOfFile(Ljava/lang/String;)Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1685
    :cond_0
    invoke-static {p0, p1, v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->buildIntentToShareFile(Landroid/content/Context;Ljava/io/File;Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static buildIntentToShareFile(Landroid/content/Context;Ljava/io/File;Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;)Landroid/content/Intent;
    .locals 3

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 1692
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 1693
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1694
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1696
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1697
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/androidlib/R$string;->zm_app_provider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x1

    .line 1698
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 1700
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    const-string p1, "android.intent.extra.STREAM"

    .line 1702
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1703
    iget-object p0, p2, Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1705
    iget p0, p2, Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;->fileType:I

    const/4 p1, 0x6

    if-eq p0, p1, :cond_2

    iget p0, p2, Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;->fileType:I

    const/4 p1, 0x5

    if-ne p0, p1, :cond_3

    :cond_2
    const-string p0, "oneshot"

    const/4 p1, 0x0

    .line 1706
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "configchange"

    .line 1707
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static copyText(Landroid/content/Context;Ljava/lang/CharSequence;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "clipboard"

    .line 1350
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 1354
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 1358
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 1362
    sget-object p1, Lus/zoom/androidlib/util/AndroidAppUtil;->TAG:Ljava/lang/String;

    const-string v1, "copy to clipboard failed"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v1, v2}, Lus/zoom/androidlib/util/ZMLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static createCalendarEvent(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 650
    invoke-static/range {v0 .. v8}, Lus/zoom/androidlib/util/AndroidAppUtil;->createCalendarEventVia(Landroid/content/pm/ResolveInfo;Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static createCalendarEventVia(Landroid/content/pm/ResolveInfo;Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 598
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "vnd.android.cursor.item/event"

    .line 599
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p6, :cond_1

    const-string v2, "title"

    .line 602
    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p7, :cond_2

    const-string p6, "description"

    .line 605
    invoke-virtual {v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-wide/16 p6, 0x0

    cmp-long v2, p2, p6

    if-lez v2, :cond_3

    const-string v2, "beginTime"

    .line 608
    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3
    cmp-long p2, p4, p6

    if-lez p2, :cond_4

    const-string p2, "endTime"

    .line 611
    invoke-virtual {v1, p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_4
    const-string p2, "allDay"

    .line 613
    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p8, :cond_5

    const-string p2, "eventLocation"

    .line 616
    invoke-virtual {v1, p2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    if-eqz p0, :cond_6

    .line 619
    iget-object p2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    :cond_6
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static createIntentForSelectImage()Landroid/content/Intent;
    .locals 3

    .line 1718
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    .line 1719
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createPublicShareCopyFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 1631
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1632
    invoke-static {p0}, Lus/zoom/androidlib/util/FileUtils;->getPublicDataPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 1635
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1636
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lus/zoom/androidlib/util/FileUtils;->createPublicShareCopyFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    .line 1639
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lus/zoom/androidlib/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static deleteCalendarEvent(Landroid/content/Context;J)I
    .locals 4
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.WRITE_CALENDAR"
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    goto :goto_0

    .line 870
    :cond_0
    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/util/AndroidAppUtil;->deleteRemindersForEvent(Landroid/content/Context;J)I

    .line 874
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 876
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 878
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    .line 881
    :try_start_0
    invoke-virtual {p0, p1, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0

    :cond_1
    :goto_0
    return v0
.end method

.method private static deleteRemindersForEvent(Landroid/content/Context;J)I
    .locals 4
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.WRITE_CALENDAR"
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    goto :goto_0

    .line 897
    :cond_0
    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "(event_id = ?)"

    const/4 v3, 0x1

    .line 900
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    .line 902
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 905
    :try_start_0
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0

    :cond_1
    :goto_0
    return v0
.end method

.method public static editCalendarEvent(Landroid/content/Context;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 804
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 806
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 807
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.EDIT"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "editMode"

    .line 811
    invoke-virtual {p2, p1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p7, :cond_0

    const-string p1, "title"

    .line 814
    invoke-virtual {p2, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p8, :cond_1

    const-string p1, "description"

    .line 817
    invoke-virtual {p2, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-wide/16 p7, 0x0

    cmp-long p1, p3, p7

    if-lez p1, :cond_2

    const-string p1, "beginTime"

    .line 820
    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_2
    cmp-long p1, p5, p7

    if-lez p1, :cond_3

    const-string p1, "endTime"

    .line 823
    invoke-virtual {p2, p1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3
    if-eqz p9, :cond_4

    const-string p1, "eventLocation"

    .line 826
    invoke-virtual {p2, p1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    :cond_4
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static getActivityIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 250
    :cond_1
    invoke-virtual {p1, p0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getActivityLabel(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 261
    :cond_1
    invoke-virtual {p1, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 262
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1309
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1310
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static getApplicationIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 219
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getApplicationIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 204
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 208
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->getApplicationIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const/16 v1, 0x2480

    .line 274
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getApplicationLabel(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 238
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 239
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getApplicationLabel(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 223
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 227
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->getApplicationLabel(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFileExtendName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1510
    invoke-static {p0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x2e

    .line 1513
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    return-object v1

    .line 1517
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileExtendNameFromMimType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1490
    invoke-static {p0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "application/vnd.google-apps.folder"

    .line 1494
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 1498
    :cond_1
    sget-object v0, Lus/zoom/androidlib/util/AndroidAppUtil;->mimeTypesTable:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    const/4 v5, 0x1

    .line 1499
    aget-object v5, v4, v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    .line 1500
    aget-object v6, v4, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1501
    invoke-static {v5, p0}, Lus/zoom/androidlib/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1502
    aget-object p0, v4, v2

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static getFileTypeByExt(Ljava/lang/String;)I
    .locals 7

    .line 1870
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 1873
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 1875
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    .line 1876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1879
    :cond_1
    sget-object v2, Lus/zoom/androidlib/util/AndroidAppUtil;->mimeTypesTable:[[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 1880
    aget-object v6, v5, v0

    check-cast v6, Ljava/lang/String;

    invoke-static {p0, v6}, Lus/zoom/androidlib/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 p0, 0x2

    .line 1881
    aget-object p0, v5, p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static getFileTypeFromMimType(Ljava/lang/String;)I
    .locals 7

    .line 1455
    invoke-static {p0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "application/vnd.google-apps.folder"

    .line 1459
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x64

    return p0

    .line 1463
    :cond_1
    sget-object v0, Lus/zoom/androidlib/util/AndroidAppUtil;->mimeTypesTable:[[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    const/4 v5, 0x1

    .line 1464
    aget-object v5, v4, v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    .line 1465
    aget-object v4, v4, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1466
    invoke-static {v5, p0}, Lus/zoom/androidlib/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static getIconByExt(Ljava/lang/String;)I
    .locals 6

    .line 1889
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1890
    sget p0, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_unknown:I

    return p0

    .line 1892
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 1894
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    .line 1895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1898
    :cond_1
    sget-object v1, Lus/zoom/androidlib/util/AndroidAppUtil;->mimeTypesTable:[[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 1899
    aget-object v5, v4, v0

    check-cast v5, Ljava/lang/String;

    invoke-static {p0, v5}, Lus/zoom/androidlib/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p0, 0x3

    .line 1900
    aget-object p0, v4, p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1904
    :cond_3
    sget p0, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_unknown:I

    return p0
.end method

.method public static getIconForFile(Ljava/lang/String;)I
    .locals 0

    if-nez p0, :cond_0

    .line 1863
    sget p0, Lus/zoom/androidlib/R$drawable;->zm_ic_filetype_unknown:I

    return p0

    .line 1865
    :cond_0
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->getFileExtendName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1866
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->getIconByExt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getJpegRotation(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1370
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v2, 0x1

    .line 1371
    invoke-virtual {v1, p0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    const/16 v0, 0x5a

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    const/16 v0, 0xb4

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne p0, v1, :cond_2

    const/16 v0, 0x10e

    :cond_2
    :goto_0
    return v0

    :catch_0
    return v0
.end method

.method public static getMimeTypeOfFile(Ljava/lang/String;)Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;
    .locals 7

    .line 1437
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->getFileExtendName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1441
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1443
    sget-object v1, Lus/zoom/androidlib/util/AndroidAppUtil;->mimeTypesTable:[[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 1444
    aget-object v6, v5, v3

    check-cast v6, Ljava/lang/String;

    invoke-static {p0, v6}, Lus/zoom/androidlib/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 p0, 0x1

    .line 1445
    aget-object p0, v5, p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x2

    .line 1446
    aget-object v0, v5, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1447
    new-instance v1, Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;

    invoke-direct {v1, p0, v0}, Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 1845
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 1846
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1850
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 1853
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getPathLastName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1535
    invoke-static {p0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "/"

    .line 1539
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "/"

    .line 1543
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1544
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v0, "/"

    .line 1547
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1548
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    .line 1966
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1970
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static hasActivityForIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1840
    :cond_0
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->queryActivitiesForIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1841
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static hasActivityForIntentIgnoreSelf(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 1822
    :cond_0
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->queryActivitiesForIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1823
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    .line 1827
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1828
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v0
.end method

.method public static hasActivityToOpenFile(Landroid/content/Context;Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1555
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1557
    invoke-static {v1}, Lus/zoom/androidlib/util/AndroidAppUtil;->getMimeTypeOfFile(Ljava/lang/String;)Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 1561
    :cond_1
    invoke-static {p0, p1, v1}, Lus/zoom/androidlib/util/AndroidAppUtil;->buildIntentToOpenFile(Landroid/content/Context;Ljava/io/File;Lus/zoom/androidlib/util/AndroidAppUtil$MimeType;)Landroid/content/Intent;

    move-result-object p1

    .line 1563
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->hasActivityForIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static hasActiviyToSelectImage(Landroid/content/Context;)Z
    .locals 1

    .line 1713
    invoke-static {}, Lus/zoom/androidlib/util/AndroidAppUtil;->createIntentForSelectImage()Landroid/content/Intent;

    move-result-object v0

    .line 1714
    invoke-static {p0, v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->hasActivityForIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static hasBrowserApp(Landroid/content/Context;)Z
    .locals 0

    .line 400
    invoke-static {p0}, Lus/zoom/androidlib/util/ZMIntentUtil;->queryBrowserActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 401
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static hasC2DMPermission(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1320
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v2, "com.google.android.c2dm.permission.RECEIVE"

    .line 1324
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static hasCalendarApp(Landroid/content/Context;)Z
    .locals 0

    .line 395
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->queryCalendarActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 396
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasCameraApp(Landroid/content/Context;)Z
    .locals 2

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-static {p0, v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->queryActivitiesForIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 322
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasEmailApp(Landroid/content/Context;)Z
    .locals 0

    .line 385
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->queryEmailActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 386
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static hasGSFPackage(Landroid/content/Context;)Z
    .locals 3

    .line 1328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    return v1

    .line 1333
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v0, "com.google.android.gsf"

    .line 1335
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method public static hasGooglePlayStoreApp(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 408
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x2000

    .line 409
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 410
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 411
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static hasSMSApp(Landroid/content/Context;)Z
    .locals 0

    .line 390
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->querySMSActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 391
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static hasSimCard(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "phone"

    .line 1955
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1959
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    return v0
.end method

.method public static isC2DMCapable(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "OPPO"

    .line 1297
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1301
    :cond_0
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->hasGSFPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->hasC2DMPermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isChinaSimCard(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "phone"

    .line 1924
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1928
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 1929
    invoke-static {v1}, Lus/zoom/androidlib/util/AndroidAppUtil;->isOperatorEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const-string v2, "460"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "461"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v3

    .line 1933
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    .line 1934
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->isOperatorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "460"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "461"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    :cond_3
    return v3

    :catch_0
    :cond_4
    return v0
.end method

.method public static isFileExtBlockedBySecurityPolicy(Ljava/lang/String;)Z
    .locals 1

    .line 1523
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->getFileExtendName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1524
    invoke-static {p0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, ".(exe)"

    .line 1529
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1530
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1531
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static isLocaleCN(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1907
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->hasSimCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1908
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->isChinaSimCard(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1910
    invoke-static {}, Lus/zoom/androidlib/util/TimeZoneUtil;->isProbablyInChina()Z

    move-result p0

    :cond_0
    return p0

    .line 1914
    :cond_1
    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getLocalDefault()Ljava/util/Locale;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1916
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "CN"

    .line 1917
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lus/zoom/androidlib/util/TimeZoneUtil;->isProbablyInChina()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method private static isOperatorEmpty(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, ""

    .line 1947
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isValidFileType(Ljava/lang/String;)Z
    .locals 6

    .line 1475
    invoke-static {p0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1479
    :cond_0
    sget-object v0, Lus/zoom/androidlib/util/AndroidAppUtil;->mimeTypesTable:[[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1480
    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/String;

    .line 1481
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static loadCalendarEvent(Landroid/content/Context;J)Lus/zoom/androidlib/util/Event;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    goto :goto_0

    .line 707
    :cond_0
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 709
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 712
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 p0, 0x7

    .line 714
    new-array v4, p0, [Ljava/lang/String;

    const-string p0, "dtstart"

    const/4 v1, 0x0

    aput-object p0, v4, v1

    const-string p0, "title"

    const/4 v8, 0x1

    aput-object p0, v4, v8

    const/4 p0, 0x2

    const-string v5, "description"

    aput-object v5, v4, p0

    const-string p0, "eventLocation"

    const/4 v9, 0x3

    aput-object p0, v4, v9

    const-string p0, "rrule"

    const/4 v10, 0x4

    aput-object p0, v4, v10

    const/4 p0, 0x5

    const-string v5, "duration"

    aput-object v5, v4, p0

    const-string p0, "dtend"

    const/4 v11, 0x6

    aput-object p0, v4, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 725
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return-object v0

    .line 736
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 737
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 739
    new-instance v0, Lus/zoom/androidlib/util/Event;

    invoke-direct {v0}, Lus/zoom/androidlib/util/Event;-><init>()V

    .line 740
    iput-wide p1, v0, Lus/zoom/androidlib/util/Event;->id:J

    .line 741
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, v0, Lus/zoom/androidlib/util/Event;->startMillis:J

    .line 742
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lus/zoom/androidlib/util/Event;->title:Ljava/lang/CharSequence;

    .line 743
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lus/zoom/androidlib/util/Event;->location:Ljava/lang/CharSequence;

    .line 744
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lus/zoom/androidlib/util/Event;->rrule:Ljava/lang/String;

    .line 745
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, v0, Lus/zoom/androidlib/util/Event;->endMillis:J

    .line 748
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catch_0
    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static onSelectSelectImageItem(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;I)V
    .locals 2

    .line 1782
    invoke-static {}, Lus/zoom/androidlib/util/AndroidAppUtil;->createIntentForSelectImage()Landroid/content/Intent;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1784
    iget-object v1, p2, Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    .line 1785
    iget-object v1, p2, Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    .line 1790
    :try_start_0
    invoke-virtual {p1, v0, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 1792
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static openFile(Landroid/content/Context;Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1570
    invoke-static {p0, p1, v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->openFile(Landroid/content/Context;Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static openFile(Landroid/content/Context;Ljava/io/File;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 1574
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1577
    :cond_0
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->createPublicShareCopyFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 1582
    :cond_1
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->buildIntentToOpenFile(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 1587
    :cond_2
    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/util/AndroidAppUtil;->action(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static queryActivitiesForIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1802
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x10000

    .line 1805
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v0, :cond_1

    .line 1812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static queryActivitiesForSelectImage(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1727
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/util/AndroidAppUtil;->createIntentForSelectImage()Landroid/content/Intent;

    move-result-object v0

    .line 1728
    invoke-static {p0, v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->queryActivitiesForIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static queryCalendarActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 367
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/event"

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    const-string v2, "test title"

    .line 369
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "description"

    const-string v2, "test description"

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "beginTime"

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "endTime"

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 374
    invoke-static {p0, v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->queryActivitiesForIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 376
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 378
    :cond_0
    new-instance v0, Lus/zoom/androidlib/util/AndroidAppUtil$ResolbeInfoComparator;

    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getLocalDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/androidlib/util/AndroidAppUtil$ResolbeInfoComparator;-><init>(Ljava/util/Locale;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    return-object p0
.end method

.method public static queryCalendarEventsForMeeting(Landroid/content/Context;JLjava/lang/String;)[J
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_CALENDAR"
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    goto :goto_1

    .line 662
    :cond_0
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "(((eventLocation = ?) OR (description like ?)) AND (deleted = ?))"

    .line 666
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 p0, 0x3

    .line 667
    new-array v8, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p3, v8, p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v8, p2

    const/4 p1, 0x2

    const-string p3, "0"

    aput-object p3, v8, p1

    .line 669
    new-array v6, p2, [Ljava/lang/String;

    const-string p1, "_id"

    aput-object p1, v6, p0

    const/4 v9, 0x0

    .line 677
    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    .line 684
    new-array p0, p0, [J

    return-object p0

    .line 686
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    new-array p2, p2, [J

    const/4 p3, 0x0

    .line 689
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    add-int/lit8 v2, p3, 0x1

    .line 691
    aput-wide v0, p2, p3

    move p3, v2

    goto :goto_0

    .line 694
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catch_0
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static queryEmailActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.dir/email"

    .line 287
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mailto:"

    .line 289
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "test topic"

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "test text"

    .line 291
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-static {p0, v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->queryActivitiesForIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 300
    :cond_0
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->querySMSActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 302
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 306
    invoke-static {v2, p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->appExists(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 307
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_2
    new-instance p0, Lus/zoom/androidlib/util/AndroidAppUtil$ResolbeInfoComparator;

    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getLocalDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/androidlib/util/AndroidAppUtil$ResolbeInfoComparator;-><init>(Ljava/util/Locale;)V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static querySMSActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android-dir/mms-sms"

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sms_body"

    const-string v2, "test"

    .line 339
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sms:"

    .line 340
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 342
    invoke-static {p0, v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->queryActivitiesForIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 344
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 346
    :cond_0
    new-instance v0, Lus/zoom/androidlib/util/AndroidAppUtil$ResolbeInfoComparator;

    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getLocalDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/androidlib/util/AndroidAppUtil$ResolbeInfoComparator;-><init>(Ljava/util/Locale;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    return-object p0
.end method

.method public static queryZoomMeetingInviteActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 354
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".intent.action.MeetingInvite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-static {p0, v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->queryActivitiesForIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 358
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 360
    :cond_0
    new-instance v0, Lus/zoom/androidlib/util/AndroidAppUtil$ResolbeInfoComparator;

    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getLocalDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/androidlib/util/AndroidAppUtil$ResolbeInfoComparator;-><init>(Ljava/util/Locale;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    return-object p0
.end method

.method private static selectDefaultCalendar(Landroid/content/Context;Ljava/lang/String;)J
    .locals 19
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_CALENDAR"
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 992
    :cond_0
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    .line 996
    new-array v4, v2, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v8, 0x0

    aput-object v2, v4, v8

    const-string v2, "account_name"

    const/4 v9, 0x1

    aput-object v2, v4, v9

    const-string v2, "account_type"

    const/4 v10, 0x2

    aput-object v2, v4, v10

    const-string v2, "ownerAccount"

    const/4 v11, 0x3

    aput-object v2, v4, v11

    .line 1004
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1012
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    const-wide/16 v3, -0x1

    move-object/from16 v7, p1

    move-wide v5, v3

    move-wide v12, v5

    .line 1020
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1026
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1027
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1028
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1029
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1033
    invoke-static {v7}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    return-wide v14

    .line 1036
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    if-eqz v17, :cond_3

    .line 1037
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    :cond_3
    const-string v17, ""

    :goto_1
    move-object/from16 v9, v17

    if-eqz v16, :cond_4

    .line 1038
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    :cond_4
    const-string v16, ""

    :goto_2
    move-object/from16 v10, v16

    const-string v11, "com.google"

    .line 1040
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    return-wide v14

    :cond_5
    cmp-long v11, v12, v3

    if-nez v11, :cond_6

    move-wide v12, v14

    :cond_6
    cmp-long v11, v5, v3

    if-nez v11, :cond_7

    const-string v11, "com.google"

    .line 1047
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1048
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-wide v5, v14

    :cond_7
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x3

    goto :goto_0

    .line 1052
    :cond_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    cmp-long v2, v5, v0

    if-ltz v2, :cond_9

    goto :goto_3

    :cond_9
    move-wide v5, v12

    :goto_3
    return-wide v5
.end method

.method private static selectDefaultCalendar(Landroid/content/Context;Lus/zoom/androidlib/data/CalendarResult;Ljava/lang/String;)J
    .locals 21
    .param p1    # Lus/zoom/androidlib/data/CalendarResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_CALENDAR"
    .end annotation

    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    if-nez p0, :cond_0

    return-wide v1

    .line 916
    :cond_0
    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    .line 920
    new-array v5, v3, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v9, 0x0

    aput-object v3, v5, v9

    const-string v3, "account_name"

    const/4 v10, 0x1

    aput-object v3, v5, v10

    const-string v3, "account_type"

    const/4 v11, 0x2

    aput-object v3, v5, v11

    const-string v3, "ownerAccount"

    const/4 v12, 0x3

    aput-object v3, v5, v12

    .line 929
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 937
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    move-object v13, v4

    move-object v14, v13

    move-wide v7, v5

    move-wide v15, v7

    move-object/from16 v4, p2

    .line 946
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 952
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 953
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 954
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 955
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 959
    invoke-static {v4}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    return-wide v17

    .line 962
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    if-eqz v19, :cond_3

    .line 963
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    :cond_3
    const-string v19, ""

    :goto_1
    move-object/from16 v10, v19

    if-eqz v14, :cond_4

    .line 964
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_4
    const-string v14, ""

    :goto_2
    const-string v11, "com.google"

    .line 965
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 966
    invoke-virtual {v0, v9}, Lus/zoom/androidlib/data/CalendarResult;->setmAccountType(Ljava/lang/String;)V

    return-wide v17

    :cond_5
    cmp-long v11, v15, v5

    if-nez v11, :cond_6

    move-object v13, v9

    move-wide/from16 v15, v17

    :cond_6
    cmp-long v11, v7, v5

    if-nez v11, :cond_7

    const-string v11, "com.google"

    .line 974
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 975
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-wide/from16 v7, v17

    :cond_7
    move-object v14, v9

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    goto :goto_0

    .line 980
    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    cmp-long v3, v7, v1

    if-ltz v3, :cond_9

    move-object v13, v14

    .line 981
    :cond_9
    invoke-virtual {v0, v13}, Lus/zoom/androidlib/data/CalendarResult;->setmAccountType(Ljava/lang/String;)V

    cmp-long v0, v7, v1

    if-ltz v0, :cond_a

    move-wide v15, v7

    :cond_a
    return-wide v15
.end method

.method public static selectImageNoDefault(Landroid/app/Activity;II)Z
    .locals 1

    const/4 v0, 0x0

    .line 1732
    invoke-static {v0, p0, p1, p2}, Lus/zoom/androidlib/util/AndroidAppUtil;->selectImageNoDefault(Landroidx/fragment/app/Fragment;Landroid/app/Activity;II)Z

    move-result p0

    return p0
.end method

.method public static selectImageNoDefault(Landroidx/fragment/app/Fragment;II)Z
    .locals 1

    const/4 v0, 0x0

    .line 1736
    invoke-static {p0, v0, p1, p2}, Lus/zoom/androidlib/util/AndroidAppUtil;->selectImageNoDefault(Landroidx/fragment/app/Fragment;Landroid/app/Activity;II)Z

    move-result p0

    return p0
.end method

.method private static selectImageNoDefault(Landroidx/fragment/app/Fragment;Landroid/app/Activity;II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 1744
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    return v0

    .line 1749
    :cond_2
    invoke-static {p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->queryActivitiesForSelectImage(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    .line 1753
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1754
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1755
    new-instance v3, Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;

    invoke-direct {v3, v2}, Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1758
    :cond_4
    new-instance v1, Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;

    move-object v2, p1

    check-cast v2, Lus/zoom/androidlib/app/ZMActivity;

    invoke-direct {v1, v2, v0}, Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;-><init>(Lus/zoom/androidlib/app/ZMActivity;Ljava/util/List;)V

    .line 1762
    new-instance v0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    invoke-direct {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    sget p2, Lus/zoom/androidlib/R$string;->zm_select_a_image:I

    .line 1763
    :goto_1
    invoke-virtual {v0, p2}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setTitle(I)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lus/zoom/androidlib/util/AndroidAppUtil$1;

    invoke-direct {v0, v1, p1, p0, p3}, Lus/zoom/androidlib/util/AndroidAppUtil$1;-><init>(Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;Landroid/app/Activity;Landroidx/fragment/app/Fragment;I)V

    .line 1764
    invoke-virtual {p2, v1, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    move-result-object p0

    .line 1772
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->create()Lus/zoom/androidlib/widget/ZMAlertDialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 1774
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1776
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->show()V

    return p1
.end method

.method public static sendDial(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 634
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 639
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.DIAL"

    .line 640
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static sendEmail(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 509
    invoke-static/range {v0 .. v5}, Lus/zoom/androidlib/util/AndroidAppUtil;->sendEmailVia(Landroid/content/pm/ResolveInfo;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static sendEmailVia(Landroid/content/pm/ResolveInfo;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p4, :cond_0

    const-string v0, "\r\n"

    const-string v1, "\n"

    .line 422
    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 425
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "vnd.android.cursor.dir/email"

    .line 427
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_2

    .line 444
    array-length v1, p2

    if-eqz v1, :cond_2

    invoke-static {p5}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.SENDTO"

    .line 447
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mailto:"

    .line 448
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "android.intent.action.SEND"

    .line 445
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v1, "android.intent.extra.SUBJECT"

    .line 451
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.TEXT"

    .line 452
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_3

    .line 454
    array-length p3, p2

    if-lez p3, :cond_3

    const-string p3, "android.intent.extra.EMAIL"

    .line 455
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    :cond_3
    invoke-static {p5}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_6

    const/4 p2, 0x0

    .line 460
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastN()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 462
    new-instance p4, Ljava/io/File;

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p5

    if-eqz p5, :cond_5

    .line 464
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p5, Lus/zoom/androidlib/R$string;->zm_app_provider:I

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 465
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 468
    :cond_4
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    const-string p4, "android.intent.extra.STREAM"

    .line 471
    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_6
    if-eqz p0, :cond_7

    .line 474
    iget-object p2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_7

    .line 475
    iget-object p2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    :cond_7
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p3
.end method

.method public static sendSMS(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 589
    invoke-static {v0, p0, p1, p2}, Lus/zoom/androidlib/util/AndroidAppUtil;->sendSMSVia(Landroid/content/pm/ResolveInfo;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static sendSMSVia(Landroid/content/pm/ResolveInfo;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p0, :cond_6

    .line 550
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 553
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "vnd.android-dir/mms-sms"

    .line 554
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sms_body"

    .line 555
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    .line 557
    array-length v2, p2

    if-lez v2, :cond_4

    const/16 v2, 0x3b

    const-string v3, "samsung"

    .line 559
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x2c

    .line 562
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_3

    .line 564
    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    array-length v4, p2

    sub-int/2addr v4, p3

    if-ge v0, v4, :cond_2

    .line 566
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smsto:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string p2, "sms:"

    .line 572
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 575
    :goto_1
    iget-object p2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_5

    .line 576
    iget-object p2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    :cond_5
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p3

    :cond_6
    :goto_2
    return v0
.end method

.method public static sendZoomMeetingInvitation(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Z
    .locals 10

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 546
    invoke-static/range {v0 .. v9}, Lus/zoom/androidlib/util/AndroidAppUtil;->sendZoomMeetingInvitationVia(Landroid/content/pm/ResolveInfo;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static sendZoomMeetingInvitationVia(Landroid/content/pm/ResolveInfo;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .line 514
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".intent.action.MeetingInvite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 519
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_0

    .line 522
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 525
    :cond_0
    sget-object p2, Lus/zoom/androidlib/util/AndroidAppUtil;->EXTRA_SUBJECT:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    sget-object p2, Lus/zoom/androidlib/util/AndroidAppUtil;->EXTRA_TEXT:Ljava/lang/String;

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    sget-object p2, Lus/zoom/androidlib/util/AndroidAppUtil;->EXTRA_MEETING_ID:Ljava/lang/String;

    invoke-virtual {v0, p2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 528
    sget-object p2, Lus/zoom/androidlib/util/AndroidAppUtil;->EXTRA_MEETING_PSW:Ljava/lang/String;

    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    sget-object p2, Lus/zoom/androidlib/util/AndroidAppUtil;->EXTRA_MEETING_RAW_PSW:Ljava/lang/String;

    invoke-virtual {v0, p2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_1

    .line 531
    iget-object p2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_1

    .line 532
    iget-object p2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    :cond_1
    :try_start_1
    invoke-virtual {p1, v0, p9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 p0, 0x1

    return p0
.end method

.method public static shareFile(Landroid/content/Context;Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1591
    invoke-static {p0, p1, v0}, Lus/zoom/androidlib/util/AndroidAppUtil;->shareFile(Landroid/content/Context;Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static shareFile(Landroid/content/Context;Ljava/io/File;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 1595
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1598
    :cond_0
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->createPublicShareCopyFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 1603
    :cond_1
    invoke-static {p0, p1}, Lus/zoom/androidlib/util/AndroidAppUtil;->buildIntentToShareFile(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 1608
    :cond_2
    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/util/AndroidAppUtil;->action(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static updateCalendarEvent(Landroid/content/Context;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    goto :goto_1

    .line 761
    :cond_0
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 763
    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 765
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 766
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    cmp-long v3, p3, v1

    if-lez v3, :cond_1

    const-string v3, "dtstart"

    .line 769
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    if-eqz p7, :cond_2

    const-string v3, "title"

    .line 773
    invoke-virtual {p2, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p8, :cond_3

    const-string p7, "description"

    .line 777
    invoke-virtual {p2, p7, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p9, :cond_4

    const-string p7, "eventLocation"

    .line 781
    invoke-virtual {p2, p7, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_4
    invoke-static {p10}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_5

    const-string p7, "rrule"

    .line 785
    invoke-virtual {p2, p7, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p7, "duration"

    .line 786
    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "P"

    invoke-virtual {p8, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p5, p3

    const-wide/16 p3, 0x3e8

    div-long/2addr p5, p3

    invoke-virtual {p8, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "S"

    invoke-virtual {p8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    cmp-long p3, p5, v1

    if-lez p3, :cond_6

    const-string p3, "dtend"

    .line 788
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6
    :goto_0
    const/4 p3, 0x0

    .line 792
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    :catch_0
    return v0

    :cond_8
    :goto_1
    return v0
.end method

.method public static viewCalendarEvent(Landroid/content/Context;J)V
    .locals 7

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 837
    invoke-static/range {v0 .. v6}, Lus/zoom/androidlib/util/AndroidAppUtil;->viewCalendarEvent(Landroid/content/Context;JJJ)V

    return-void
.end method

.method public static viewCalendarEvent(Landroid/content/Context;JJJ)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 843
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 845
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 846
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_0

    const-string p1, "beginTime"

    .line 852
    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    cmp-long p1, p5, v0

    if-lez p1, :cond_1

    const-string p1, "endTime"

    .line 855
    invoke-virtual {p2, p1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 858
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
