.class Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$5;
.super Ljava/lang/Object;
.source "WhiteboardCameraPairDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$5;->this$0:Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 351
    iget-object p1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$5;->this$0:Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->access$400(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)Lus/zoom/zrc/base/widget/ZRCButton;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$5;->this$0:Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->access$300(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/widget/ZRCButton;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
