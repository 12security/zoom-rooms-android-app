.class Lus/zoom/zrc/view/MeetingMainControllerFragment$8;
.super Ljava/lang/Object;
.source "MeetingMainControllerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/MeetingMainControllerFragment;->showInputEmailDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

.field final synthetic val$etEmail:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 1166
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$8;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$8;->val$etEmail:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1170
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$8;->val$etEmail:Landroid/widget/EditText;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->collapseSoftInputMethod(Landroid/view/View;)V

    return-void
.end method
