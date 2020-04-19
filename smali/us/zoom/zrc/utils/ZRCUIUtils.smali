.class public Lus/zoom/zrc/utils/ZRCUIUtils;
.super Ljava/lang/Object;
.source "ZRCUIUtils.java"


# static fields
.field private static final ClickIntervalMillis:I = 0x1f4

.field public static final GalleryImageStyleContentOnly:I = 0x4

.field public static final GalleryImageStyleGallery:I = 0x3

.field public static final GalleryImageStyleSpeaker:I = 0x1

.field public static final GalleryImageStyleThumbnail:I = 0x2

.field public static final GalleryImageStyleVideoControl:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeLocaleTo(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 4

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 298
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 300
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 301
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 303
    :cond_0
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 305
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 306
    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    return-void
.end method

.method public static drawMultiShareIconInstruction(Landroid/content/Context;Ljava/lang/Boolean;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 197
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 198
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 199
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 200
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 202
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lus/zoom/zrcbox/R$color;->multi_share_icon_draw_circle_red:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_white:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 206
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 214
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 215
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    int-to-float p0, p1

    const/high16 p1, 0x42ac0000    # 86.0f

    mul-float p1, p1, p0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr p1, v4

    int-to-float p2, p2

    const/high16 v5, 0x41800000    # 16.0f

    mul-float p2, p2, v5

    div-float/2addr p2, v4

    const/high16 v5, 0x41600000    # 14.0f

    mul-float v5, v5, p0

    div-float/2addr v5, v4

    const/high16 v6, 0x40800000    # 4.0f

    mul-float p0, p0, v6

    div-float/2addr p0, v4

    .line 223
    invoke-virtual {v3, p1, p2, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 224
    invoke-virtual {v3, p1, p2, p0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static getRelativePosition([ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x2

    .line 340
    new-array v1, v0, [I

    .line 341
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 342
    new-array p1, v0, [I

    .line 343
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    .line 345
    aget v0, v1, p2

    aget v2, p1, p2

    sub-int/2addr v0, v2

    aput v0, p0, p2

    const/4 p2, 0x1

    .line 346
    aget v0, v1, p2

    aget p1, p1, p2

    sub-int/2addr v0, p1

    aput v0, p0, p2

    return-void
.end method

.method public static getScreenOrientation(Landroid/content/Context;)I
    .locals 2

    const-string v0, "window"

    .line 254
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 258
    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 259
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    if-le v0, p0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static isTappedOnView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6

    .line 324
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 325
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    const/4 v1, 0x2

    .line 326
    new-array v1, v1, [I

    .line 327
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 328
    aget v3, v1, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    aget v3, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    aget v0, v1, v4

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    aget v0, v1, v4

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isTappedUnderView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 2

    .line 333
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    const/4 v0, 0x2

    .line 334
    new-array v0, v0, [I

    .line 335
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    .line 336
    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static matchImageViewToTextSize(Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 1
    .param p0    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 147
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    .line 152
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 153
    new-instance v0, Lus/zoom/zrc/utils/ZRCUIUtils$1;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/utils/ZRCUIUtils$1;-><init>(Landroid/widget/ImageView;F)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static preventClickRapidly(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 313
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->button_click_time_stamp:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 314
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 319
    :cond_1
    sget v1, Lus/zoom/zrcbox/R$id;->button_click_time_stamp:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return v0
.end method

.method public static safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 242
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 243
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000000

    .line 245
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    const/high16 v0, 0x10000

    .line 247
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x400000

    .line 248
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safeStartActivity(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 230
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 232
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10000000

    .line 234
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    const/high16 p1, 0x10000

    .line 236
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x400000

    .line 237
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static setBackArrowFor(Landroid/widget/TextView;)V
    .locals 3

    .line 106
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$drawable;->back_arrow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 115
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    .line 116
    invoke-static {v0, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setChildViewDim(Landroid/view/View;Z)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 178
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 179
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 180
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 181
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 182
    invoke-static {v1, p1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setChildViewDim(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 185
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public static setChildViewEnabled(Landroid/view/View;Z)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 163
    instance-of v0, p0, Lus/zoom/zrc/view/ZRCTextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 164
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 168
    :goto_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 169
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 170
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 171
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 172
    invoke-static {v1, p1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setChildViewEnabled(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V
    .locals 4

    .line 60
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 61
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-le v1, v0, :cond_0

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_0

    :cond_0
    int-to-float v1, v1

    int-to-float v0, v0

    int-to-float v2, p1

    div-float/2addr v0, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    :goto_0
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v1, v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public static setCompoundDrawables(Landroid/widget/TextView;IIII)V
    .locals 2
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-lez p2, :cond_1

    .line 78
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-lez p3, :cond_2

    .line 79
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-lez p4, :cond_3

    .line 80
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 81
    :cond_3
    invoke-static {p0, p1, p2, p3, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setCompoundDrawables(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setCompoundDrawables(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 85
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 88
    invoke-static {p1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 92
    invoke-static {p2, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 95
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 96
    invoke-static {p3, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    if-eqz p4, :cond_3

    .line 99
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p4, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 100
    invoke-static {p4, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    .line 102
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setEmptyCountryCodeFlagDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V
    .locals 11

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->country_flag_id_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$color;->country_flag_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/high16 v1, 0x3f800000    # 1.0f

    .line 357
    invoke-static {p0, v1}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v10

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lus/zoom/zrcbox/R$dimen;->country_flag_w_h:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 360
    new-instance v4, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;

    invoke-direct {v4, p2, v0, v6}, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;-><init>(Ljava/lang/String;II)V

    .line 361
    new-instance p0, Lus/zoom/zrc/utils/RoundDrawable;

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    move-object v3, p0

    move v8, v9

    invoke-direct/range {v3 .. v10}, Lus/zoom/zrc/utils/RoundDrawable;-><init>(Landroid/graphics/drawable/Drawable;FIZIII)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 362
    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 363
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static setLayoutFullScreen(Landroid/view/Window;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x400

    .line 379
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/16 v0, 0x100

    .line 380
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 382
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 383
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x500

    .line 385
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public static setRightArrowFor(Landroid/widget/TextView;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    .line 128
    invoke-static {p0, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setRightArrowFor(Landroid/widget/TextView;I)V

    return-void
.end method

.method public static setRightArrowFor(Landroid/widget/TextView;I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 132
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$drawable;->right_arrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 140
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    .line 141
    invoke-static {v0, p1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    const/4 p1, 0x0

    .line 143
    invoke-virtual {p0, p1, p1, v0, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setStatusBarColor(Landroid/view/Window;I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 367
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x4000000

    .line 368
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 369
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 370
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method public static setTextAndBold(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 290
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 291
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    const/16 v3, 0x12

    .line 292
    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 293
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setTextViewSizeAndBold(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 275
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    .line 276
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 277
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 278
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, p3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 p3, 0x12

    invoke-virtual {v1, v2, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 279
    invoke-virtual {v1, p1, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 280
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setViewDim(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 190
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 191
    instance-of v0, p0, Lus/zoom/zrc/view/ZRCTextViewButton;

    if-eqz v0, :cond_1

    .line 192
    check-cast p0, Lus/zoom/zrc/view/ZRCTextViewButton;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCTextViewButton;->setDisableAlpha(Z)V

    :cond_1
    return-void
.end method
