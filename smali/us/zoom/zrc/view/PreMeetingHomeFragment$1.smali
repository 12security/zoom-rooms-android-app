.class Lus/zoom/zrc/view/PreMeetingHomeFragment$1;
.super Ljava/lang/Object;
.source "PreMeetingHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/PreMeetingHomeFragment;->clickMeetMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/PreMeetingHomeFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/PreMeetingHomeFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment$1;->this$0:Lus/zoom/zrc/view/PreMeetingHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 185
    iget-object p1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment$1;->this$0:Lus/zoom/zrc/view/PreMeetingHomeFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->access$000(Lus/zoom/zrc/view/PreMeetingHomeFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment$1;->this$0:Lus/zoom/zrc/view/PreMeetingHomeFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->access$000(Lus/zoom/zrc/view/PreMeetingHomeFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 188
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/PreMeetingHomeFragment$1;->this$0:Lus/zoom/zrc/view/PreMeetingHomeFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/PreMeetingHomeFragment;->access$100(Lus/zoom/zrc/view/PreMeetingHomeFragment;)V

    return-void
.end method
