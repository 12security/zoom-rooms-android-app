.class Lus/zoom/zrc/base/app/ZRCAlertDialogFragment$3;
.super Ljava/lang/Object;
.source "ZRCAlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->createAlertDialog()Lus/zoom/zrc/base/app/ZRCAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment$3;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 168
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment$3;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->access$200(Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment$3;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;->access$200(Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
