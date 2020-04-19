.class final Lus/zoom/androidlib/util/ZMHtmlUtil$1;
.super Lus/zoom/androidlib/util/ZMHtmlUtil$URLSpanToWebView;
.source "ZMHtmlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/util/ZMHtmlUtil;->fromHtml(Ljava/lang/String;Lus/zoom/androidlib/util/ZMHtmlUtil$OnURLSpanClickListener;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onURLSpanClickListener:Lus/zoom/androidlib/util/ZMHtmlUtil$OnURLSpanClickListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lus/zoom/androidlib/util/ZMHtmlUtil$OnURLSpanClickListener;)V
    .locals 0

    .line 26
    iput-object p3, p0, Lus/zoom/androidlib/util/ZMHtmlUtil$1;->val$onURLSpanClickListener:Lus/zoom/androidlib/util/ZMHtmlUtil$OnURLSpanClickListener;

    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/util/ZMHtmlUtil$URLSpanToWebView;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    iget-object v0, p0, Lus/zoom/androidlib/util/ZMHtmlUtil$1;->val$onURLSpanClickListener:Lus/zoom/androidlib/util/ZMHtmlUtil$OnURLSpanClickListener;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lus/zoom/androidlib/util/ZMHtmlUtil$1;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lus/zoom/androidlib/util/ZMHtmlUtil$1;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lus/zoom/androidlib/util/ZMHtmlUtil$OnURLSpanClickListener;->onClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
