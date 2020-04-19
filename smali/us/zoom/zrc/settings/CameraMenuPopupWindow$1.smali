.class Lus/zoom/zrc/settings/CameraMenuPopupWindow$1;
.super Ljava/lang/Object;
.source "CameraMenuPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/CameraMenuPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/CameraMenuPopupWindow;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/CameraMenuPopupWindow;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow$1;->this$0:Lus/zoom/zrc/settings/CameraMenuPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 88
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraMenuPopupWindow$1;->this$0:Lus/zoom/zrc/settings/CameraMenuPopupWindow;

    invoke-static {v0}, Lus/zoom/zrc/settings/CameraMenuPopupWindow;->access$000(Lus/zoom/zrc/settings/CameraMenuPopupWindow;)Lus/zoom/zrc/view/ZRCListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_black:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    return-void
.end method
