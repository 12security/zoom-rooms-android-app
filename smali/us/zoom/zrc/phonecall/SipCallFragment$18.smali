.class Lus/zoom/zrc/phonecall/SipCallFragment$18;
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

    .line 346
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$18;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 350
    sget-object p1, Lus/zoom/zrc/phonecall/SipCallFragment;->TAG:Ljava/lang/String;

    const-string v0, "cancelTransferView is clicked."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$18;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$100(Lus/zoom/zrc/phonecall/SipCallFragment;)Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->clickHangup()V

    return-void
.end method
