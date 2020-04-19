.class Lus/zoom/androidlib/widget/ZMAlertDialog$1;
.super Ljava/lang/Object;
.source "ZMAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/ZMAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/ZMAlertDialog;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$1;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$1;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-static {v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->access$000(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$1;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-static {v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->access$100(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$1;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->access$100(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$1;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-static {v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->access$200(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$1;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-static {v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->access$300(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$1;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->access$300(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$1;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-static {v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->access$400(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$1;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->access$500(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 205
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$1;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->access$500(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 208
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 210
    :cond_3
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$1;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->access$600(Lus/zoom/androidlib/widget/ZMAlertDialog;)Lus/zoom/androidlib/widget/ZMAlertHolder;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->isEnableAutoClickBtnDismiss()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 214
    :cond_4
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$1;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->access$700(Lus/zoom/androidlib/widget/ZMAlertDialog;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$1;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
