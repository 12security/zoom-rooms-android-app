.class Lus/zoom/zrc/view/ParticipantListPtFrameLayout$1;
.super Ljava/lang/Object;
.source "ParticipantListPtFrameLayout.java"

# interfaces
.implements Lus/zoom/zrc/view/ParticipantPopupView$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->onMeetingParticipantItemClick(Landroid/view/View;Lus/zoom/zrcsdk/model/ZRCParticipant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ParticipantListPtFrameLayout;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout$1;->this$0:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 231
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout$1;->this$0:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    invoke-static {v0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->access$000(Lus/zoom/zrc/view/ParticipantListPtFrameLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->removeView(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantListPtFrameLayout$1;->this$0:Lus/zoom/zrc/view/ParticipantListPtFrameLayout;

    invoke-static {v0}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->access$100(Lus/zoom/zrc/view/ParticipantListPtFrameLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ParticipantListPtFrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
