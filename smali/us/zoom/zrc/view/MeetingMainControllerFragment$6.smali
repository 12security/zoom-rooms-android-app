.class Lus/zoom/zrc/view/MeetingMainControllerFragment$6;
.super Ljava/lang/Object;
.source "MeetingMainControllerFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V
    .locals 0

    .line 1119
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$6;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 1123
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_1

    .line 1125
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1129
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$6;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$400(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1130
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$6;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->access$400(Lus/zoom/zrc/view/MeetingMainControllerFragment;)Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return p3
.end method
