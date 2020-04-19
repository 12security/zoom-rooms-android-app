.class Lus/zoom/zrc/phonecall/SipCallFragment$21;
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
        "Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipCallFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$21;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 428
    check-cast p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment$21;->onChanged(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;)V

    return-void
.end method

.method public onChanged(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;)V
    .locals 3

    .line 431
    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$21;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$000(Lus/zoom/zrc/phonecall/SipCallFragment;)V

    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$21;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;->getForegroundCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$1500(Lus/zoom/zrc/phonecall/SipCallFragment;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;)V

    .line 436
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$21;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;->getBackgroundCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$1600(Lus/zoom/zrc/phonecall/SipCallFragment;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;)V

    .line 437
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$21;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$1700(Lus/zoom/zrc/phonecall/SipCallFragment;)I

    move-result v1

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;->getTotalSize()I

    move-result v2

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$1800(Lus/zoom/zrc/phonecall/SipCallFragment;II)V

    .line 438
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$21;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;->getTotalSize()I

    move-result p1

    invoke-static {v0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$1702(Lus/zoom/zrc/phonecall/SipCallFragment;I)I

    return-void
.end method
