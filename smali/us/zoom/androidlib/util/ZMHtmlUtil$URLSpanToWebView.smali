.class public abstract Lus/zoom/androidlib/util/ZMHtmlUtil$URLSpanToWebView;
.super Landroid/text/style/ClickableSpan;
.source "ZMHtmlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/ZMHtmlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "URLSpanToWebView"
.end annotation


# instance fields
.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 49
    iput-object p1, p0, Lus/zoom/androidlib/util/ZMHtmlUtil$URLSpanToWebView;->url:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lus/zoom/androidlib/util/ZMHtmlUtil$URLSpanToWebView;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMHtmlUtil$URLSpanToWebView;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMHtmlUtil$URLSpanToWebView;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lus/zoom/androidlib/util/ZMHtmlUtil$URLSpanToWebView;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lus/zoom/androidlib/util/ZMHtmlUtil$URLSpanToWebView;->url:Ljava/lang/String;

    return-void
.end method
