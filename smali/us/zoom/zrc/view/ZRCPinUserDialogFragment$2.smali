.class Lus/zoom/zrc/view/ZRCPinUserDialogFragment$2;
.super Ljava/lang/Object;
.source "ZRCPinUserDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCPinUserDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCPinUserDialogFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment$2;->this$0:Lus/zoom/zrc/view/ZRCPinUserDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment$2;->this$0:Lus/zoom/zrc/view/ZRCPinUserDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->dismiss()V

    return-void
.end method
