.class Lus/zoom/zrc/model/VirtualBackgroundHelper$2;
.super Ljava/lang/Object;
.source "VirtualBackgroundHelper.java"

# interfaces
.implements Lus/zoom/zrc/utils/ZRCImageLoader$IDrawableFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/model/VirtualBackgroundHelper;->setImageLoaderListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/model/VirtualBackgroundHelper;


# direct methods
.method constructor <init>(Lus/zoom/zrc/model/VirtualBackgroundHelper;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper$2;->this$0:Lus/zoom/zrc/model/VirtualBackgroundHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 104
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$drawable;->virtual_background_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    .line 94
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->virtual_background_img_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 97
    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    return-object p1
.end method
