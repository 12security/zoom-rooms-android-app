.class Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;
.super Ljava/lang/Object;
.source "ZMSendMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMSendMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppItem"
.end annotation


# instance fields
.field appInfo:Landroid/content/pm/ResolveInfo;

.field appType:I


# direct methods
.method constructor <init>(ILandroid/content/pm/ResolveInfo;)V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;->appType:I

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    .line 207
    iput p1, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;->appType:I

    .line 208
    iput-object p2, p0, Lus/zoom/androidlib/app/ZMSendMessageFragment$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    return-void
.end method
