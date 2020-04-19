.class Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment$2;
.super Ljava/lang/Object;
.source "MeetingPhoneMainFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/MeetingInformationView$OnClickCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->initMeetingInformationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment$2;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 147
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment$2;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;->access$100(Lus/zoom/zrc/phoneview/MeetingPhoneMainFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
