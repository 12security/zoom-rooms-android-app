.class Lus/zoom/zrc/view/ParticipantPopupView$1;
.super Ljava/lang/Object;
.source "ParticipantPopupView.java"

# interfaces
.implements Lus/zoom/zrc/view/MakeCohostDialogFragment$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ParticipantPopupView;->makeCoHost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ParticipantPopupView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ParticipantPopupView;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView$1;->this$0:Lus/zoom/zrc/view/ParticipantPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 262
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView$1;->this$0:Lus/zoom/zrc/view/ParticipantPopupView;

    invoke-static {v0}, Lus/zoom/zrc/view/ParticipantPopupView;->access$000(Lus/zoom/zrc/view/ParticipantPopupView;)Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView$1;->this$0:Lus/zoom/zrc/view/ParticipantPopupView;

    invoke-static {v0}, Lus/zoom/zrc/view/ParticipantPopupView;->access$000(Lus/zoom/zrc/view/ParticipantPopupView;)Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantPopupView$1;->this$0:Lus/zoom/zrc/view/ParticipantPopupView;

    invoke-static {v1}, Lus/zoom/zrc/view/ParticipantPopupView;->access$100(Lus/zoom/zrc/view/ParticipantPopupView;)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->onClickAssignCoHost(IZ)V

    :cond_0
    return-void
.end method
