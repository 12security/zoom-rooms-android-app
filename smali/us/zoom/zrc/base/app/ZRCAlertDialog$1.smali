.class Lus/zoom/zrc/base/app/ZRCAlertDialog$1;
.super Ljava/lang/Object;
.source "ZRCAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/base/app/ZRCAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/app/ZRCAlertDialog;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->access$000(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->access$100(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->access$100(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->access$200(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->access$300(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->access$300(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->access$400(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->access$500(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 200
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->access$500(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 203
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 208
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->access$600(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$1;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
