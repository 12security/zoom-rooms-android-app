.class public Lus/zoom/zrc/utils/LazyLoadDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LazyLoadDrawable.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAlpha:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mImagePath:Ljava/lang/String;

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mbValid:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 18
    const-class v0, Lus/zoom/zrc/utils/LazyLoadDrawable;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mAlpha:I

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mbValid:Z

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mImagePath:Ljava/lang/String;

    .line 38
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 42
    :try_start_0
    iget-object v2, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mImagePath:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mIntrinsicWidth:I

    .line 50
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p1, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mIntrinsicHeight:I

    .line 52
    iget p1, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mIntrinsicWidth:I

    if-lez p1, :cond_1

    iget p1, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mIntrinsicHeight:I

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mbValid:Z

    return-void

    :catch_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    iget-object v0, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mImagePath:Ljava/lang/String;

    invoke-static {v0}, Lus/zoom/zrc/utils/ZMBitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 78
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    return-void

    .line 81
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrc/utils/LazyLoadDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 85
    iget v2, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mAlpha:I

    if-ltz v2, :cond_3

    const/16 v3, 0xff

    if-gt v2, v3, :cond_3

    .line 86
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    :cond_3
    iget-object v2, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v2, :cond_4

    .line 90
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 93
    :cond_4
    iget-object v2, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 69
    iget v0, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 64
    iget v0, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValidDrawable()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mbValid:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 98
    iput p1, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mAlpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lus/zoom/zrc/utils/LazyLoadDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method
