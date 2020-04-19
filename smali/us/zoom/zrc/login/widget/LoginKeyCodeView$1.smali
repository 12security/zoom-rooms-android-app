.class Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;
.super Ljava/lang/Object;
.source "LoginKeyCodeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/widget/LoginKeyCodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 87
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    new-instance v1, Lus/zoom/zrc/login/widget/LoginKeyCodeView$1$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$1$1;-><init>(Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$100(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$100(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;->onKeyCodeInputComplete()V

    :cond_0
    return-void
.end method
