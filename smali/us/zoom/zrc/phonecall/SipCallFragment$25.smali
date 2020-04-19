.class Lus/zoom/zrc/phonecall/SipCallFragment$25;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipCallFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$25;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 466
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment$25;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 470
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$25;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object p1

    new-instance v0, Lus/zoom/zrc/phonecall/SipCallFragment$25$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/phonecall/SipCallFragment$25$1;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment$25;)V

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$25;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/phonecall/SipCallFragment$25$2;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/phonecall/SipCallFragment$25$2;-><init>(Lus/zoom/zrc/phonecall/SipCallFragment$25;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    :goto_0
    return-void
.end method
