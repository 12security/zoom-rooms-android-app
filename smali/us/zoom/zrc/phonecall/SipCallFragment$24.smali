.class Lus/zoom/zrc/phonecall/SipCallFragment$24;
.super Ljava/lang/Object;
.source "SipCallFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipCallFragment;->observeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipCallFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$24;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 2

    .line 460
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$24;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$2100(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 461
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$24;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$2200(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$24;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$2300(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 457
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment$24;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
