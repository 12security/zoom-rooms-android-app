.class Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "UpgradeMeetingConfirmDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment$1;->this$0:Lus/zoom/zrc/phonecall/UpgradeMeetingConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 67
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
