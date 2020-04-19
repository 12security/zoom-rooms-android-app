.class public Lus/zoom/androidlib/app/ZMSendMessageFragment;
.super Lus/zoom/androidlib/app/ZMDialogFragment;
.source "ZMSendMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;,
        Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;,
        Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;
    }
.end annotation


# static fields
.field public static final APP_TYPE_ALL:I = -0x1

.field public static final APP_TYPE_CLIPBOARD:I = 0x4

.field public static final APP_TYPE_EMAIL:I = 0x1

.field public static final APP_TYPE_SMS:I = 0x2

.field private static final ARG_APP_TYPES:Ljava/lang/String; = "appTypes"

.field private static final ARG_CHOOSER_TITLE:Ljava/lang/String; = "chooserTitle"

.field private static final ARG_CONTENT:Ljava/lang/String; = "content"

.field private static final ARG_EMAIL:Ljava/lang/String; = "email"

.field private static final ARG_EXT_ITEMS:Ljava/lang/String; = "extItems"

.field private static final ARG_PHONE_NUMBERS:Ljava/lang/String; = "phoneNumbers"

.field private static final ARG_SMS_CONTENT:Ljava/lang/String; = "smsContent"

.field private static final ARG_STREAM:Ljava/lang/String; = "stream"

.field private static final ARG_TOPIC:Ljava/lang/String; = "topic"

.field private static final TAG:Ljava/lang/String; = "ZMSendMessageFragment"


# instance fields
.field private mAdapter:Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->setCancelable(Z)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/app/ZMSendMessageFragment;)Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment;->mAdapter:Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/app/ZMSendMessageFragment;Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->onClickItem(Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;I)V

    return-void
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 2

    .line 192
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "clipboard"

    .line 196
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    if-nez v0, :cond_1

    return-void

    .line 199
    :cond_1
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onClickItem(Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;I)V
    .locals 8

    .line 153
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "email"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v0, "phoneNumbers"

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "topic"

    .line 158
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "content"

    .line 159
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "smsContent"

    .line 160
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stream"

    .line 161
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 163
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment;->mAdapter:Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 165
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 169
    :cond_1
    instance-of p2, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;

    if-eqz p2, :cond_4

    .line 170
    check-cast p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;

    .line 172
    iget p2, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;->appType:I

    const/4 v7, 0x1

    if-ne p2, v7, :cond_2

    .line 173
    iget-object v1, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    invoke-static/range {v1 .. v6}, Lus/zoom/androidlib/util/AndroidAppUtil;->sendEmailVia(Landroid/content/pm/ResolveInfo;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 174
    :cond_2
    iget p2, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;->appType:I

    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 175
    iget-object p1, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {p1, v2, v0, v1}, Lus/zoom/androidlib/util/AndroidAppUtil;->sendSMSVia(Landroid/content/pm/ResolveInfo;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 176
    :cond_3
    iget p1, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;->appType:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    .line 177
    invoke-direct {p0, v5}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->copyToClipboard(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_4
    instance-of p2, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;

    if-eqz p2, :cond_5

    .line 180
    check-cast p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;

    .line 182
    :try_start_0
    iget-object p1, p1, Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_0
    return-void
.end method

.method public static show(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 55
    invoke-static/range {v0 .. v9}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->show(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static show(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 59
    invoke-static/range {v0 .. v10}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->show(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;)V
    .locals 10

    move-object v0, p3

    move-object v4, p5

    move/from16 v1, p9

    .line 63
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->queryEmailActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 64
    invoke-static {p0}, Lus/zoom/androidlib/util/AndroidAppUtil;->querySMSActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    and-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 69
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_1

    .line 72
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v7, v9

    :cond_1
    and-int/lit8 v9, v1, 0x4

    if-nez v9, :cond_5

    if-nez v7, :cond_2

    return-void

    :cond_2
    const/4 v9, 0x1

    if-ne v7, v9, :cond_5

    if-eqz v5, :cond_3

    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 80
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    .line 81
    invoke-static/range {v0 .. v5}, Lus/zoom/androidlib/util/AndroidAppUtil;->sendEmailVia(Landroid/content/pm/ResolveInfo;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    .line 82
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 83
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    move-object v2, p0

    .line 84
    invoke-static {v1, p0, p3, p5}, Lus/zoom/androidlib/util/AndroidAppUtil;->sendSMSVia(Landroid/content/pm/ResolveInfo;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    :goto_1
    return-void

    .line 90
    :cond_5
    invoke-static/range {p6 .. p6}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v4

    goto :goto_2

    :cond_6
    move-object/from16 v2, p6

    .line 93
    :goto_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "email"

    move-object v6, p2

    .line 94
    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v5, "phoneNumbers"

    .line 95
    invoke-virtual {v3, v5, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "topic"

    move-object v5, p4

    .line 96
    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content"

    .line 97
    invoke-virtual {v3, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "smsContent"

    .line 98
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stream"

    move-object/from16 v2, p7

    .line 99
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "chooserTitle"

    move-object/from16 v2, p8

    .line 100
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appTypes"

    .line 101
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "extItems"

    move-object/from16 v1, p10

    .line 102
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 104
    new-instance v0, Lus/zoom/androidlib/app/ZMSendMessageFragment;

    invoke-direct {v0}, Lus/zoom/androidlib/app/ZMSendMessageFragment;-><init>()V

    .line 105
    invoke-virtual {v0, v3}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 107
    const-class v1, Lus/zoom/androidlib/app/ZMSendMessageFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    invoke-virtual {v0, p1, v1}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 117
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->createEmptyDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "chooserTitle"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appTypes"

    .line 121
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "extItems"

    .line 122
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, [Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;

    .line 124
    new-instance v2, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;

    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lus/zoom/androidlib/app/ZMActivity;

    invoke-direct {v2, v3, v1, p1}, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;-><init>(Lus/zoom/androidlib/app/ZMActivity;I[Lus/zoom/androidlib/app/ZMSendMessageFragment$ExtAppItem;)V

    iput-object v2, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment;->mAdapter:Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;

    .line 126
    new-instance p1, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMSendMessageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment;->mAdapter:Lus/zoom/androidlib/app/ZMSendMessageFragment$AppListAdapter;

    new-instance v1, Lus/zoom/androidlib/app/ZMSendMessageFragment$1;

    invoke-direct {v1, p0}, Lus/zoom/androidlib/app/ZMSendMessageFragment$1;-><init>(Lus/zoom/androidlib/app/ZMSendMessageFragment;)V

    .line 128
    invoke-virtual {p1, v0, v1}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->create()Lus/zoom/androidlib/widget/ZMAlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onStart()V
    .locals 0

    .line 144
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->onStart()V

    return-void
.end method
