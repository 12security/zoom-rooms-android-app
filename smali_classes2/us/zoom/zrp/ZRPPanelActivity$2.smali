.class Lus/zoom/zrp/ZRPPanelActivity$2;
.super Ljava/lang/Object;
.source "ZRPPanelActivity.java"

# interfaces
.implements Lus/zoom/zrc/utils/ZRCImageLoader$OnImageLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPPanelActivity;->initBackgroundImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPPanelActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPPanelActivity;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lus/zoom/zrp/ZRPPanelActivity$2;->this$0:Lus/zoom/zrp/ZRPPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 252
    iget-object p1, p0, Lus/zoom/zrp/ZRPPanelActivity$2;->this$0:Lus/zoom/zrp/ZRPPanelActivity;

    invoke-static {p1, p3}, Lus/zoom/zrp/ZRPPanelActivity;->access$100(Lus/zoom/zrp/ZRPPanelActivity;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
