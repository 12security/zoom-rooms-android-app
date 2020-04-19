.class Lus/zoom/zrc/view/MeetingInformationView$1;
.super Ljava/lang/Object;
.source "MeetingInformationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/MeetingInformationView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MeetingInformationView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingInformationView;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingInformationView$1;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$1;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingInformationView;->access$000(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getY()F

    move-result v0

    .line 135
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView$1;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v1}, Lus/zoom/zrc/view/MeetingInformationView;->access$100(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getY()F

    move-result v1

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingInformationView$1;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v2}, Lus/zoom/zrc/view/MeetingInformationView;->access$100(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 138
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 139
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$1;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingInformationView;->access$100(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method
