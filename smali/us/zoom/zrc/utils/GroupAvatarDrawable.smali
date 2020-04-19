.class public Lus/zoom/zrc/utils/GroupAvatarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GroupAvatarDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;
    }
.end annotation


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCountMembers:I

.field private mDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mNoAvatarItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mDrawables:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mNoAvatarItems:Ljava/util/List;

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mAlpha:I

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mCountMembers:I

    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;

    .line 62
    iget-object v2, v1, Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;->avatar:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget v3, v1, Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;->contactId:I

    if-gez v3, :cond_1

    .line 65
    iget-object v2, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mNoAvatarItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_4

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 79
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    iget-object v1, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mDrawables:Ljava/util/List;

    new-instance v3, Lus/zoom/zrc/utils/LazyLoadDrawable;

    invoke-direct {v3, v2}, Lus/zoom/zrc/utils/LazyLoadDrawable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mDrawables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mCountMembers:I

    if-lt v1, v2, :cond_6

    goto :goto_3

    .line 86
    :cond_3
    iget-object v2, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mNoAvatarItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 70
    :cond_4
    :goto_1
    iget v2, v1, Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;->contactId:I

    .line 72
    invoke-static {}, Lus/zoom/zrc/utils/ContactsAvatarCache;->getInstance()Lus/zoom/zrc/utils/ContactsAvatarCache;

    move-result-object v3

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lus/zoom/zrc/utils/ContactsAvatarCache;->getContactAvatar(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 74
    iget-object v1, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mDrawables:Ljava/util/List;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/ZRCApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 76
    :cond_5
    iget-object v2, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mNoAvatarItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method private drawMemberAvatar(Landroid/content/Context;Ljava/util/List;Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Path;Landroid/graphics/Rect;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "I",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Rect;",
            ")I"
        }
    .end annotation

    .line 448
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    const/4 v0, 0x0

    if-le p4, p5, :cond_1

    .line 449
    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/drawable/Drawable;

    .line 450
    instance-of v1, p4, Lus/zoom/zrc/utils/LazyLoadDrawable;

    if-eqz v1, :cond_0

    .line 451
    move-object v1, p4

    check-cast v1, Lus/zoom/zrc/utils/LazyLoadDrawable;

    .line 452
    invoke-virtual {v1}, Lus/zoom/zrc/utils/LazyLoadDrawable;->isValidDrawable()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p4

    goto :goto_0

    :cond_0
    move-object v0, p4

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 461
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int p2, p5, p2

    .line 462
    iget-object p4, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mNoAvatarItems:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_2

    .line 463
    iget-object p1, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mNoAvatarItems:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;

    .line 464
    new-instance v0, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;

    iget-object p2, p1, Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;->name:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;->jid:Ljava/lang/String;

    invoke-direct {v0, p2, p1}, Lus/zoom/zrc/utils/NameAbbrAvatarDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 466
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$drawable;->zm_no_avatar:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 470
    :cond_3
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 471
    invoke-virtual {p3, p6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 p1, -0x1

    if-eqz v0, :cond_6

    .line 474
    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 475
    invoke-virtual {v0, p7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 477
    iget p2, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mAlpha:I

    if-ltz p2, :cond_4

    const/16 p4, 0xff

    if-gt p2, p4, :cond_4

    .line 478
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 481
    :cond_4
    iget-object p2, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz p2, :cond_5

    .line 482
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 485
    :cond_5
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 488
    :cond_6
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 491
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 p4, 0x1

    .line 492
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 493
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 494
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 495
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object p1

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p1, p4}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 497
    invoke-virtual {p3, p6, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return p5
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v8, p0

    .line 264
    iget v0, v8, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mCountMembers:I

    if-gtz v0, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lus/zoom/zrc/utils/GroupAvatarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 269
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 271
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v11

    .line 275
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    const/4 v13, 0x1

    .line 276
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 278
    invoke-static {v11, v0}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 280
    iget v1, v8, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mCountMembers:I

    const/high16 v14, 0x40000000    # 2.0f

    const/4 v15, 0x0

    if-ne v1, v13, :cond_1

    .line 281
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v15, v15, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 282
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 283
    iget v0, v9, Landroid/graphics/Rect;->left:I

    iget v1, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 285
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v14

    .line 287
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 288
    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v1, v2, v0, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 290
    iget-object v2, v8, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mDrawables:Ljava/util/List;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v3, p1

    move-object v4, v12

    invoke-direct/range {v0 .. v7}, Lus/zoom/zrc/utils/GroupAvatarDrawable;->drawMemberAvatar(Landroid/content/Context;Ljava/util/List;Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Path;Landroid/graphics/Rect;)I

    goto/16 :goto_0

    :cond_1
    const/high16 v16, 0x40800000    # 4.0f

    const/high16 v6, 0x43340000    # 180.0f

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/high16 v3, 0x42b40000    # 90.0f

    if-ne v1, v4, :cond_2

    .line 293
    div-int/lit8 v1, v10, 0x4

    mul-int v1, v1, v1

    div-int/lit8 v4, v10, 0x2

    mul-int v2, v4, v4

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 294
    new-instance v13, Landroid/graphics/RectF;

    int-to-float v10, v10

    invoke-direct {v13, v5, v5, v10, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v0, v0

    .line 295
    invoke-virtual {v13, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 296
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v5, v9, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v13, v0, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 300
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v17, v0, v14

    .line 303
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 304
    invoke-virtual {v5, v13, v3, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 305
    iget v0, v13, Landroid/graphics/RectF;->left:F

    add-float v0, v0, v17

    iget v3, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 306
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 308
    new-instance v3, Landroid/graphics/Rect;

    div-float v0, v10, v16

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v20, v4

    move-object/from16 v21, v5

    sub-double v4, v6, v1

    double-to-int v0, v4

    div-float/2addr v10, v14

    float-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v14, v4, v1

    double-to-int v10, v14

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v1

    double-to-int v6, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v1

    double-to-int v1, v4

    invoke-direct {v3, v0, v10, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 313
    iget v0, v9, Landroid/graphics/Rect;->left:I

    iget v1, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 315
    iget-object v2, v8, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mDrawables:Ljava/util/List;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v9, v3

    move-object/from16 v3, p1

    move/from16 v10, v20

    move-object v4, v12

    move-object/from16 v6, v21

    const/high16 v15, 0x43340000    # 180.0f

    const/high16 v14, 0x43870000    # 270.0f

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lus/zoom/zrc/utils/GroupAvatarDrawable;->drawMemberAvatar(Landroid/content/Context;Ljava/util/List;Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Path;Landroid/graphics/Rect;)I

    move-result v0

    .line 318
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 319
    invoke-virtual {v6, v13, v14, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 320
    iget v1, v13, Landroid/graphics/RectF;->left:F

    add-float v1, v1, v17

    iget v2, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 321
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    const/4 v1, 0x0

    .line 323
    invoke-virtual {v9, v10, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 325
    iget-object v2, v8, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mDrawables:Ljava/util/List;

    const/4 v1, 0x1

    add-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v7}, Lus/zoom/zrc/utils/GroupAvatarDrawable;->drawMemberAvatar(Landroid/content/Context;Ljava/util/List;Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Path;Landroid/graphics/Rect;)I

    goto/16 :goto_0

    :cond_2
    const/high16 v13, 0x43870000    # 270.0f

    const/high16 v15, 0x43340000    # 180.0f

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 327
    div-int/lit8 v1, v10, 0x4

    mul-int v17, v1, v1

    mul-int/lit8 v1, v17, 0x2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 328
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v6, v10

    invoke-direct {v7, v5, v5, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v0, v0

    .line 329
    invoke-virtual {v7, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 330
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v5, v9, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v7, v0, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 334
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v18, v0, v14

    .line 337
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 338
    invoke-virtual {v5, v7, v15, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 339
    iget v0, v7, Landroid/graphics/RectF;->left:F

    add-float v0, v0, v18

    iget v3, v7, Landroid/graphics/RectF;->top:F

    add-float v3, v3, v18

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 340
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v3, v7, Landroid/graphics/RectF;->top:F

    add-float v3, v3, v18

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 341
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 343
    new-instance v3, Landroid/graphics/Rect;

    div-float v0, v6, v16

    move-object/from16 v21, v5

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v13, v4, v1

    double-to-int v0, v13

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v1

    double-to-int v1, v4

    invoke-direct {v3, v0, v0, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 347
    iget v0, v9, Landroid/graphics/Rect;->left:I

    iget v1, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 349
    iget-object v2, v8, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mDrawables:Ljava/util/List;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v13, v3

    const/high16 v14, 0x42b40000    # 90.0f

    move-object/from16 v3, p1

    const/16 v19, 0x2

    move-object v4, v12

    move-object/from16 v20, v21

    move/from16 v21, v6

    move-object/from16 v6, v20

    move-object v15, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lus/zoom/zrc/utils/GroupAvatarDrawable;->drawMemberAvatar(Landroid/content/Context;Ljava/util/List;Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Path;Landroid/graphics/Rect;)I

    move-result v0

    .line 352
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 353
    iget v1, v15, Landroid/graphics/RectF;->left:F

    iget v2, v15, Landroid/graphics/RectF;->top:F

    add-float v2, v2, v18

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 354
    iget v1, v15, Landroid/graphics/RectF;->left:F

    add-float v1, v1, v18

    iget v2, v15, Landroid/graphics/RectF;->top:F

    add-float v2, v2, v18

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 355
    iget v1, v15, Landroid/graphics/RectF;->left:F

    add-float v1, v1, v18

    iget v2, v15, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 356
    invoke-virtual {v6, v15, v14, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 357
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 359
    div-int/lit8 v10, v10, 0x2

    const/4 v1, 0x0

    invoke-virtual {v13, v1, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 361
    iget-object v2, v8, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mDrawables:Ljava/util/List;

    const/4 v1, 0x1

    add-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v7}, Lus/zoom/zrc/utils/GroupAvatarDrawable;->drawMemberAvatar(Landroid/content/Context;Ljava/util/List;Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Path;Landroid/graphics/Rect;)I

    move-result v0

    .line 364
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x43870000    # 270.0f

    .line 365
    invoke-virtual {v6, v15, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 366
    iget v1, v15, Landroid/graphics/RectF;->left:F

    add-float v1, v1, v18

    iget v2, v15, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 367
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    mul-int v10, v10, v10

    add-int v1, v17, v10

    int-to-double v1, v1

    .line 369
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 371
    new-instance v7, Landroid/graphics/Rect;

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v3, v3, v21

    div-float v3, v3, v16

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v13, v3, v1

    double-to-int v5, v13

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v21, v10

    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-object v15, v11

    sub-double v10, v13, v1

    double-to-int v10, v10

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v1

    double-to-int v3, v3

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v1

    double-to-int v1, v13

    invoke-direct {v7, v5, v10, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 375
    iget v1, v9, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 377
    iget-object v2, v8, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mDrawables:Ljava/util/List;

    const/4 v1, 0x1

    add-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v3, p1

    move-object v4, v12

    invoke-direct/range {v0 .. v7}, Lus/zoom/zrc/utils/GroupAvatarDrawable;->drawMemberAvatar(Landroid/content/Context;Ljava/util/List;Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Path;Landroid/graphics/Rect;)I

    goto/16 :goto_0

    :cond_3
    move-object v15, v11

    const/high16 v14, 0x42b40000    # 90.0f

    const/16 v19, 0x2

    const/4 v2, 0x4

    if-lt v1, v2, :cond_4

    .line 380
    div-int/lit8 v1, v10, 0x4

    mul-int v1, v1, v1

    mul-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 381
    new-instance v11, Landroid/graphics/RectF;

    int-to-float v3, v10

    invoke-direct {v11, v5, v5, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v0, v0

    .line 382
    invoke-virtual {v11, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 383
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v4, v9, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v11, v0, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 387
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v13, v0, v4

    .line 390
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, 0x43340000    # 180.0f

    .line 391
    invoke-virtual {v6, v11, v0, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 392
    iget v0, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v13

    iget v4, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v13

    invoke-virtual {v6, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 393
    iget v0, v11, Landroid/graphics/RectF;->left:F

    iget v4, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v13

    invoke-virtual {v6, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 394
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 396
    new-instance v7, Landroid/graphics/Rect;

    div-float v3, v3, v16

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-object/from16 v17, v6

    sub-double v5, v3, v1

    double-to-int v0, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v1

    double-to-int v1, v3

    invoke-direct {v7, v0, v0, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 400
    iget v0, v9, Landroid/graphics/Rect;->left:I

    iget v1, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 402
    iget-object v2, v8, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mDrawables:Ljava/util/List;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v3, p1

    move-object v4, v12

    const/4 v9, 0x0

    move-object/from16 v6, v17

    move-object/from16 v16, v7

    invoke-direct/range {v0 .. v7}, Lus/zoom/zrc/utils/GroupAvatarDrawable;->drawMemberAvatar(Landroid/content/Context;Ljava/util/List;Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Path;Landroid/graphics/Rect;)I

    move-result v0

    .line 405
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x43870000    # 270.0f

    .line 406
    invoke-virtual {v6, v11, v1, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 407
    iget v1, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    iget v2, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v13

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    iget v1, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    iget v2, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 409
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 411
    div-int/lit8 v7, v10, 0x2

    move-object/from16 v5, v16

    const/4 v1, 0x0

    invoke-virtual {v5, v7, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 413
    iget-object v2, v8, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mDrawables:Ljava/util/List;

    const/4 v1, 0x1

    add-int/lit8 v16, v0, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v17, v5

    move/from16 v5, v16

    move v9, v7

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lus/zoom/zrc/utils/GroupAvatarDrawable;->drawMemberAvatar(Landroid/content/Context;Ljava/util/List;Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Path;Landroid/graphics/Rect;)I

    move-result v0

    .line 416
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 417
    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v13

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 418
    iget v1, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    iget v2, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v13

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 419
    iget v1, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    iget v2, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 420
    invoke-virtual {v6, v11, v14, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 421
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    neg-int v1, v10

    .line 423
    div-int/lit8 v1, v1, 0x2

    move-object/from16 v10, v17

    invoke-virtual {v10, v1, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 425
    iget-object v2, v8, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mDrawables:Ljava/util/List;

    const/4 v1, 0x1

    add-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lus/zoom/zrc/utils/GroupAvatarDrawable;->drawMemberAvatar(Landroid/content/Context;Ljava/util/List;Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Path;Landroid/graphics/Rect;)I

    move-result v0

    .line 428
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 429
    iget v1, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    iget v2, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 430
    iget v1, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    iget v2, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v13

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 431
    iget v1, v11, Landroid/graphics/RectF;->right:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v13

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v1, 0x0

    .line 432
    invoke-virtual {v6, v11, v1, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 433
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    const/4 v1, 0x0

    .line 435
    invoke-virtual {v10, v9, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 437
    iget-object v2, v8, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mDrawables:Ljava/util/List;

    const/4 v1, 0x1

    add-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct/range {v0 .. v7}, Lus/zoom/zrc/utils/GroupAvatarDrawable;->drawMemberAvatar(Landroid/content/Context;Ljava/util/List;Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Path;Landroid/graphics/Rect;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 504
    iput p1, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mAlpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method
