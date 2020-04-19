.class Lus/zoom/zrc/view/ParticipantDTMFFragment$2;
.super Ljava/lang/Object;
.source "ParticipantDTMFFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 106
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment$2;->this$0:Lus/zoom/zrc/view/ParticipantDTMFFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantDTMFFragment$2;->this$0:Lus/zoom/zrc/view/ParticipantDTMFFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ParticipantDTMFFragment;->dismiss()V

    return-void
.end method
