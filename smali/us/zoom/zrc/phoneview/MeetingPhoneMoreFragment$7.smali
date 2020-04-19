.class Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$7;
.super Ljava/lang/Object;
.source "MeetingPhoneMoreFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->showInputEmailDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

.field final synthetic val$etEmail:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$7;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    iput-object p2, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$7;->val$etEmail:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 687
    iget-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$7;->val$etEmail:Landroid/widget/EditText;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->collapseSoftInputMethod(Landroid/view/View;)V

    return-void
.end method
