.class Lus/zoom/zrc/view/ZRCPolicyFragment$4;
.super Landroid/webkit/WebViewClient;
.source "ZRCPolicyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCPolicyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCPolicyFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCPolicyFragment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment$4;->this$0:Lus/zoom/zrc/view/ZRCPolicyFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment$4;->this$0:Lus/zoom/zrc/view/ZRCPolicyFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCPolicyFragment;->access$000(Lus/zoom/zrc/view/ZRCPolicyFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 144
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment$4;->this$0:Lus/zoom/zrc/view/ZRCPolicyFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCPolicyFragment;->access$000(Lus/zoom/zrc/view/ZRCPolicyFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPolicyFragment$4;->this$0:Lus/zoom/zrc/view/ZRCPolicyFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCPolicyFragment;->access$100(Lus/zoom/zrc/view/ZRCPolicyFragment;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 151
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
