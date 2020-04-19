.class Lus/zoom/zrc/login/widget/LoginKeyCodeView$1$1;
.super Ljava/lang/Object;
.source "LoginKeyCodeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$1$1;->this$1:Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 90
    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$1$1;->this$1:Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;

    iget-object v0, v0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$002(Lus/zoom/zrc/login/widget/LoginKeyCodeView;Z)Z

    return-void
.end method
