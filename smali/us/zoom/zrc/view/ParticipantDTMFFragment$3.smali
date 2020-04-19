.class Lus/zoom/zrc/view/ParticipantDTMFFragment$3;
.super Ljava/lang/Object;
.source "ParticipantDTMFFragment.java"

# interfaces
.implements Lus/zoom/zrc/base/widget/keypad/KeypadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ParticipantDTMFFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ParticipantDTMFFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ParticipantDTMFFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment$3;->this$0:Lus/zoom/zrc/view/ParticipantDTMFFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyClicked(Ljava/lang/String;)V
    .locals 2

    .line 118
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment$3;->this$0:Lus/zoom/zrc/view/ParticipantDTMFFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/ParticipantDTMFFragment;->access$100(Lus/zoom/zrc/view/ParticipantDTMFFragment;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lus/zoom/zrc/model/Model;->sendDTMF(ILjava/lang/String;)V

    return-void
.end method
