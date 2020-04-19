.class Lus/zoom/zrc/view/RoomSystemAddressView$1;
.super Ljava/lang/Object;
.source "RoomSystemAddressView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/RoomSystemAddressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/RoomSystemAddressView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/RoomSystemAddressView;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView$1;->this$0:Lus/zoom/zrc/view/RoomSystemAddressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView$1;->this$0:Lus/zoom/zrc/view/RoomSystemAddressView;

    invoke-static {v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->access$000(Lus/zoom/zrc/view/RoomSystemAddressView;)Lus/zoom/zrc/view/RoomSystemAddressViewListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView$1;->this$0:Lus/zoom/zrc/view/RoomSystemAddressView;

    invoke-static {v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->access$100(Lus/zoom/zrc/view/RoomSystemAddressView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 60
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView$1;->this$0:Lus/zoom/zrc/view/RoomSystemAddressView;

    invoke-static {p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->access$200(Lus/zoom/zrc/view/RoomSystemAddressView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView$1;->this$0:Lus/zoom/zrc/view/RoomSystemAddressView;

    invoke-static {v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->access$300(Lus/zoom/zrc/view/RoomSystemAddressView;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v1, Lus/zoom/zrcbox/R$id;->rb_h323:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 68
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemAddressView$1;->this$0:Lus/zoom/zrc/view/RoomSystemAddressView;

    invoke-static {v1}, Lus/zoom/zrc/view/RoomSystemAddressView;->access$000(Lus/zoom/zrc/view/RoomSystemAddressView;)Lus/zoom/zrc/view/RoomSystemAddressViewListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lus/zoom/zrc/view/RoomSystemAddressViewListener;->onClickCall(Ljava/lang/String;I)V

    goto :goto_1

    .line 69
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemAddressView$1;->this$0:Lus/zoom/zrc/view/RoomSystemAddressView;

    invoke-static {v0}, Lus/zoom/zrc/view/RoomSystemAddressView;->access$400(Lus/zoom/zrc/view/RoomSystemAddressView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 70
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemAddressView$1;->this$0:Lus/zoom/zrc/view/RoomSystemAddressView;

    invoke-static {p1}, Lus/zoom/zrc/view/RoomSystemAddressView;->access$000(Lus/zoom/zrc/view/RoomSystemAddressView;)Lus/zoom/zrc/view/RoomSystemAddressViewListener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/view/RoomSystemAddressViewListener;->onClickCancel()V

    :cond_4
    :goto_1
    return-void
.end method
