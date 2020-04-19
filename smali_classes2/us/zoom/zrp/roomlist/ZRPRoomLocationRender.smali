.class Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;
.super Ljava/lang/Object;
.source "ZRPRoomLocationRender.java"


# instance fields
.field private drawPath:Landroid/graphics/Path;

.field private origPath:Landroid/graphics/Path;

.field private rect:Landroid/graphics/Rect;

.field private rectF:Landroid/graphics/RectF;

.field private region:Landroid/graphics/Region;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->rectF:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->rect:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->region:Landroid/graphics/Region;

    return-void
.end method

.method private computeBounds()V
    .locals 3

    .line 71
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->drawPath:Landroid/graphics/Path;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->rectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 72
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-void
.end method

.method static parse(Ljava/lang/String;)Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 113
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    .line 116
    invoke-virtual {p0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 117
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    .line 119
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ellipse"

    .line 120
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    invoke-static {p0}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->parseEllipseDrawable(Lorg/w3c/dom/Node;)Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;

    move-result-object v1

    :cond_0
    const-string v4, "path"

    .line 124
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-static {p0}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->parsePathDrawable(Lorg/w3c/dom/Node;)Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;

    move-result-object p0

    move-object v1, p0

    .line 128
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, ""

    const-string v3, "parse room render error: "

    .line 134
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, v3, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v2, ""

    const-string v3, "parse room render error: "

    .line 132
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, v3, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p0

    const-string v2, ""

    const-string v3, "parse room render error: "

    .line 130
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, v3, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method private parseEllipse(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "cx"

    .line 81
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v2, "cy"

    .line 82
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v3, "rx"

    .line 83
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v4, "ry"

    .line 84
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 86
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->origPath:Landroid/graphics/Path;

    .line 87
    new-instance v4, Landroid/graphics/RectF;

    sub-float v5, v1, v3

    sub-float v6, v2, p1

    add-float/2addr v1, v3

    add-float/2addr v2, p1

    invoke-direct {v4, v5, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 88
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->origPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 89
    new-instance p1, Landroid/graphics/Path;

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->origPath:Landroid/graphics/Path;

    invoke-direct {p1, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->drawPath:Landroid/graphics/Path;

    .line 90
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->computeBounds()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, ""

    const-string v2, "parse room ellipse render error: "

    .line 94
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, ""

    const-string v2, "parse room ellipse render error: "

    .line 92
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static parseEllipseDrawable(Lorg/w3c/dom/Node;)Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;
    .locals 5

    .line 140
    new-instance v0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;

    invoke-direct {v0}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;-><init>()V

    .line 141
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 142
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 143
    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 144
    invoke-interface {p0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 145
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {v0, v1}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->parseEllipse(Ljava/util/Map;)V

    return-object v0
.end method

.method private parsePath(Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-static {p1}, Lus/zoom/zrp/roomlist/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->origPath:Landroid/graphics/Path;

    .line 100
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->origPath:Landroid/graphics/Path;

    if-eqz p1, :cond_0

    .line 101
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->drawPath:Landroid/graphics/Path;

    .line 102
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->computeBounds()V

    :cond_0
    return-void
.end method

.method private static parsePathDrawable(Lorg/w3c/dom/Node;)Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;
    .locals 3

    .line 153
    new-instance v0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;

    invoke-direct {v0}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;-><init>()V

    .line 154
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 155
    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 156
    invoke-interface {p0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->parsePath(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method contains(FF)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->region:Landroid/graphics/Region;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    return p1
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->drawPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method getBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 63
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method transform(Landroid/graphics/Matrix;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->origPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->drawPath:Landroid/graphics/Path;

    if-nez v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 47
    invoke-direct {p0}, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->computeBounds()V

    .line 49
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->region:Landroid/graphics/Region;

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 50
    iget-object p1, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->region:Landroid/graphics/Region;

    iget-object v0, p0, Lus/zoom/zrp/roomlist/ZRPRoomLocationRender;->drawPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method
