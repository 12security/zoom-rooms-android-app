.class Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;
.super Ljava/lang/Object;
.source "AndroidAppUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/AndroidAppUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppItem"
.end annotation


# instance fields
.field appInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 1

    .line 2004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2002
    iput-object v0, p0, Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    .line 2005
    iput-object p1, p0, Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;->appInfo:Landroid/content/pm/ResolveInfo;

    return-void
.end method
