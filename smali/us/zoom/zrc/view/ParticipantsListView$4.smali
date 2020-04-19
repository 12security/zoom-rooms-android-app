.class Lus/zoom/zrc/view/ParticipantsListView$4;
.super Ljava/lang/Object;
.source "ParticipantsListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ParticipantsListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ParticipantsListView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ParticipantsListView;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$4;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 215
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$4;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-static {p1}, Lus/zoom/zrc/view/ParticipantsListView;->access$300(Lus/zoom/zrc/view/ParticipantsListView;)Lus/zoom/zrc/view/ParticipantsListView$OnDismissListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$4;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-static {p1}, Lus/zoom/zrc/view/ParticipantsListView;->access$300(Lus/zoom/zrc/view/ParticipantsListView;)Lus/zoom/zrc/view/ParticipantsListView$OnDismissListener;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/view/ParticipantsListView$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method
