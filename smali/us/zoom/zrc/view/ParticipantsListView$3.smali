.class Lus/zoom/zrc/view/ParticipantsListView$3;
.super Ljava/lang/Object;
.source "ParticipantsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 201
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$3;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 204
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView$3;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-static {v0}, Lus/zoom/zrc/view/ParticipantsListView;->access$200(Lus/zoom/zrc/view/ParticipantsListView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 205
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView$3;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-static {v0}, Lus/zoom/zrc/view/ParticipantsListView;->access$200(Lus/zoom/zrc/view/ParticipantsListView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 206
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsListView$3;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-static {v0}, Lus/zoom/zrc/view/ParticipantsListView;->access$200(Lus/zoom/zrc/view/ParticipantsListView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method
