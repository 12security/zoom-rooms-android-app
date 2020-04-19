.class Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$4;
.super Ljava/lang/Object;
.source "MeetingPhoneMoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$4;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 307
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$4;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$300(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 308
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$4;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$300(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 309
    iget-object v0, p0, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment$4;->this$0:Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;->access$300(Lus/zoom/zrc/phoneview/MeetingPhoneMoreFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method
