.class public Lus/zoom/zrc/view/ParticipantsDialogFragment$DialogF;
.super Lus/zoom/zrc/base/app/ZRCDialog;
.source "ParticipantsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/ParticipantsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogF"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ParticipantsDialogFragment;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/view/ParticipantsDialogFragment;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lus/zoom/zrc/view/ParticipantsDialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 196
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment$DialogF;->this$0:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    .line 197
    invoke-direct {p0, p2}, Lus/zoom/zrc/base/app/ZRCDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lus/zoom/zrc/view/ParticipantsDialogFragment;Landroid/content/Context;I)V
    .locals 0
    .param p1    # Lus/zoom/zrc/view/ParticipantsDialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 200
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment$DialogF;->this$0:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    .line 201
    invoke-direct {p0, p2, p3}, Lus/zoom/zrc/base/app/ZRCDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Lus/zoom/zrc/view/ParticipantsDialogFragment;Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Lus/zoom/zrc/view/ParticipantsDialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 204
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment$DialogF;->this$0:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    .line 205
    invoke-direct {p0, p2, p3, p4}, Lus/zoom/zrc/base/app/ZRCDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 226
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment$DialogF;->this$0:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->access$000(Lus/zoom/zrc/view/ParticipantsDialogFragment;)Lus/zoom/zrc/view/ParticipantsListView;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsListView;->canDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 210
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment$DialogF;->this$0:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->access$000(Lus/zoom/zrc/view/ParticipantsDialogFragment;)Lus/zoom/zrc/view/ParticipantsListView;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/ParticipantsListView;->canDismiss()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 213
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantsDialogFragment$DialogF;->this$0:Lus/zoom/zrc/view/ParticipantsDialogFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/ParticipantsDialogFragment;->access$000(Lus/zoom/zrc/view/ParticipantsDialogFragment;)Lus/zoom/zrc/view/ParticipantsListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/ParticipantsListView;->getHitRect(Landroid/graphics/Rect;)V

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsDialogFragment$DialogF;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 219
    :cond_0
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
