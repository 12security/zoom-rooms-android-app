.class Lus/zoom/zrc/base/app/ZRCDialogFragment$1;
.super Lus/zoom/androidlib/util/EventAction;
.source "ZRCDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/base/app/ZRCDialogFragment;->safeDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/app/ZRCDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/app/ZRCDialogFragment;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCDialogFragment$1;->this$0:Lus/zoom/zrc/base/app/ZRCDialogFragment;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 0

    .line 221
    check-cast p1, Lus/zoom/zrc/base/app/ZRCDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->dismiss()V

    return-void
.end method
