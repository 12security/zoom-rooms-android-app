.class Lus/zoom/zrc/PTActivity$7;
.super Ljava/lang/Object;
.source "PTActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/PTActivity;->showEnterPasswordDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/PTActivity;

.field final synthetic val$etPassword:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lus/zoom/zrc/PTActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lus/zoom/zrc/PTActivity$7;->this$0:Lus/zoom/zrc/PTActivity;

    iput-object p2, p0, Lus/zoom/zrc/PTActivity$7;->val$etPassword:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 776
    iget-object v0, p0, Lus/zoom/zrc/PTActivity$7;->this$0:Lus/zoom/zrc/PTActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lus/zoom/zrc/PTActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 778
    iget-object v1, p0, Lus/zoom/zrc/PTActivity$7;->val$etPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    :cond_0
    return-void
.end method
