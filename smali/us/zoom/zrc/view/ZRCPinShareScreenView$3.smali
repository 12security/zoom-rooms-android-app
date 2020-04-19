.class Lus/zoom/zrc/view/ZRCPinShareScreenView$3;
.super Ljava/lang/Object;
.source "ZRCPinShareScreenView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCPinShareScreenView;->pinShareSourceOnZR(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

.field final synthetic val$shareSourceIdToPin:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCPinShareScreenView;I)V
    .locals 0

    .line 199
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$3;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    iput p2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$3;->val$shareSourceIdToPin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "stop annotated content, pin share source id=%d on zr screen=%d"

    const/4 p2, 0x2

    .line 202
    new-array p2, p2, [Ljava/lang/Object;

    iget v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$3;->val$shareSourceIdToPin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$3;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->access$400(Lus/zoom/zrc/view/ZRCPinShareScreenView;)Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$3;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-static {p2}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->access$400(Lus/zoom/zrc/view/ZRCPinShareScreenView;)Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenIndex()I

    move-result p2

    iget v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$3;->val$shareSourceIdToPin:I

    invoke-virtual {p1, p2, v0, v1}, Lus/zoom/zrc/model/Model;->pinShareSourceOnZRScreen(IIZ)Z

    return-void
.end method
