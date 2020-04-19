.class Lus/zoom/zrc/view/MeetingInformationView$2;
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

    .line 146
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingInformationView$2;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 149
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$2;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingInformationView;->access$200(Lus/zoom/zrc/view/MeetingInformationView;)Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->setFocusable(Z)V

    .line 150
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$2;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingInformationView;->access$200(Lus/zoom/zrc/view/MeetingInformationView;)Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->setFocusableInTouchMode(Z)V

    .line 151
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$2;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingInformationView;->access$200(Lus/zoom/zrc/view/MeetingInformationView;)Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->requestFocus()Z

    .line 152
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$2;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingInformationView;->access$200(Lus/zoom/zrc/view/MeetingInformationView;)Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method
