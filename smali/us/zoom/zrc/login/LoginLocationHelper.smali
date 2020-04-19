.class public Lus/zoom/zrc/login/LoginLocationHelper;
.super Ljava/lang/Object;
.source "LoginLocationHelper.java"


# instance fields
.field private root:Lus/zoom/zrcsdk/model/ZRCLocationTree;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseLocationsToList(Lus/zoom/zrcsdk/model/ZRCLocationTree;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ")",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 92
    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 94
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 95
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getChildren()Ljava/util/List;

    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginLocationHelper;->sortLocationList(Ljava/util/List;)V

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 104
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 105
    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private sortLocationList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 79
    new-instance v1, Lus/zoom/zrc/login/LoginLocationHelper$1;

    invoke-direct {v1, p0, v0}, Lus/zoom/zrc/login/LoginLocationHelper$1;-><init>(Lus/zoom/zrc/login/LoginLocationHelper;Ljava/text/Collator;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getFirstDisplayItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v1, p0, Lus/zoom/zrc/login/LoginLocationHelper;->root:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-nez v1, :cond_0

    return-object v0

    .line 118
    :cond_0
    invoke-direct {p0, v1}, Lus/zoom/zrc/login/LoginLocationHelper;->parseLocationsToList(Lus/zoom/zrcsdk/model/ZRCLocationTree;)Ljava/util/List;

    move-result-object v1

    .line 121
    new-instance v2, Lus/zoom/zrc/login/LoginLocationHelper$2;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/LoginLocationHelper$2;-><init>(Lus/zoom/zrc/login/LoginLocationHelper;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    iget-object v2, p0, Lus/zoom/zrc/login/LoginLocationHelper;->root:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v2

    .line 129
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 130
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v5

    if-le v2, v5, :cond_2

    .line 131
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v2

    :cond_2
    const/16 v4, 0x3c

    if-gt v2, v4, :cond_1

    :cond_3
    const/16 v3, 0x5a

    if-gt v3, v2, :cond_4

    return-object v0

    .line 142
    :cond_4
    invoke-direct {p0, v1}, Lus/zoom/zrc/login/LoginLocationHelper;->sortLocationList(Ljava/util/List;)V

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 144
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v4

    if-ne v2, v4, :cond_5

    .line 145
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public getLocation(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 157
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLocationHelper;->root:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-nez v0, :cond_1

    return-object v1

    .line 161
    :cond_1
    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginLocationHelper;->parseLocationsToList(Lus/zoom/zrcsdk/model/ZRCLocationTree;)Ljava/util/List;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 164
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    return-object v1
.end method

.method public getLocationPath(Lus/zoom/zrcsdk/model/ZRCLocationTree;)Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginLocationHelper;->getTreeTitle(Lus/zoom/zrcsdk/model/ZRCLocationTree;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTreeTitle(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginLocationHelper;->getTreeTitle(Lus/zoom/zrcsdk/model/ZRCLocationTree;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public getTreeTitle(Lus/zoom/zrcsdk/model/ZRCLocationTree;)Ljava/lang/String;
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p1

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 42
    iget-object v1, p0, Lus/zoom/zrc/login/LoginLocationHelper;->root:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    iget-object v1, p0, Lus/zoom/zrc/login/LoginLocationHelper;->root:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    if-eq p1, v1, :cond_0

    const-string v1, " > "

    .line 51
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 54
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasLocationToDisplay()Z
    .locals 1

    .line 173
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginLocationHelper;->getFirstDisplayItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isParentToLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;Lus/zoom/zrcsdk/model/ZRCLocationTree;)Z
    .locals 0
    .param p1    # Lus/zoom/zrcsdk/model/ZRCLocationTree;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lus/zoom/zrcsdk/model/ZRCLocationTree;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 67
    :cond_0
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method setRootLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lus/zoom/zrc/login/LoginLocationHelper;->root:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    return-void
.end method
