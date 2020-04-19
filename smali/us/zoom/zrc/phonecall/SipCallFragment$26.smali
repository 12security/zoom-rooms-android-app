.class Lus/zoom/zrc/phonecall/SipCallFragment$26;
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

    .line 487
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$26;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 490
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 491
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$26;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    goto :goto_0

    .line 493
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$26;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/phonecall/PhoneCallFragment$PhoneCallEndingDialog;->dismiss(Landroidx/fragment/app/FragmentManager;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 487
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment$26;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
