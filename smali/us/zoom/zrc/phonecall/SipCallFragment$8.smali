.class Lus/zoom/zrc/phonecall/SipCallFragment$8;
.super Ljava/lang/Object;
.source "SipCallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipCallFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipCallFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$8;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 277
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$8;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$100(Lus/zoom/zrc/phonecall/SipCallFragment;)Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$8;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$600(Lus/zoom/zrc/phonecall/SipCallFragment;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->clickMute(Z)V

    return-void
.end method
