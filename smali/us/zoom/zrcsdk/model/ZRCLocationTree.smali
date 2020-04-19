.class public Lus/zoom/zrcsdk/model/ZRCLocationTree;
.super Ljava/lang/Object;
.source "ZRCLocationTree.java"


# static fields
.field public static final EXPIRED_TIME_MILLIS:J = 0x6ddd00L

.field public static final ZRCLocationType_Account:I = 0x5a

.field public static final ZRCLocationType_Buildings:I = 0x28

.field public static final ZRCLocationType_Campuses:I = 0x32

.field public static final ZRCLocationType_Cities:I = 0x3c

.field public static final ZRCLocationType_Country:I = 0x50

.field public static final ZRCLocationType_Devices:I = 0xa

.field public static final ZRCLocationType_Floors:I = 0x1e

.field public static final ZRCLocationType_Local_Defined_All_Children:I = -0xa

.field public static final ZRCLocationType_None:I = 0x0

.field public static final ZRCLocationType_Rooms:I = 0x14

.field public static final ZRCLocationType_States:I = 0x46

.field public static final ZRCLocationType_UserGroup:I = 0x55


# instance fields
.field private assignable:Z

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;"
        }
    .end annotation
.end field

.field private depth:I

.field private expand:Z

.field private fetchedTimeMillis:J

.field private isLastChild:Z

.field private locationID:Ljava/lang/String;

.field private parent:Lus/zoom/zrcsdk/model/ZRCLocationTree;

.field private parentID:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->expand:Z

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->depth:I

    return-void
.end method

.method public static findLocationByID(Lus/zoom/zrcsdk/model/ZRCLocationTree;Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 222
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getLocationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 230
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 234
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 235
    invoke-static {v1, p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->findLocationByID(Lus/zoom/zrcsdk/model/ZRCLocationTree;Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_4
    return-object v0

    :cond_5
    :goto_0
    return-object v0
.end method

.method private static hasAssignableItem(Lus/zoom/zrcsdk/model/ZRCLocationTree;)Z
    .locals 2

    .line 182
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->isAssignable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 186
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 188
    invoke-static {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasAssignableItem(Lus/zoom/zrcsdk/model/ZRCLocationTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static prepareLocationTree(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 3

    if-eqz p0, :cond_2

    .line 197
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 201
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getDepth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->setDepth(I)V

    .line 204
    invoke-static {v1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasAssignableItem(Lus/zoom/zrcsdk/model/ZRCLocationTree;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-static {v1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->prepareLocationTree(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private putSelfAndAncestorsIntoLocationBranchList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;)V"
        }
    .end annotation

    .line 245
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    invoke-direct {v0, p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->putSelfAndAncestorsIntoLocationBranchList(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 149
    :cond_0
    instance-of v1, p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 150
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 151
    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->type:I

    iget v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;->type:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->assignable:Z

    iget-boolean v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;->assignable:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->fetchedTimeMillis:J

    iget-wide v5, p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;->fetchedTimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->locationID:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;->locationID:Ljava/lang/String;

    .line 154
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->text:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;->text:Ljava/lang/String;

    .line 155
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->parentID:Ljava/lang/String;

    iget-object v3, p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;->parentID:Ljava/lang/String;

    .line 156
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->children:Ljava/util/List;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCLocationTree;->children:Ljava/util/List;

    .line 157
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public findLocationByID(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;
    .locals 0

    .line 217
    invoke-static {p0, p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->findLocationByID(Lus/zoom/zrcsdk/model/ZRCLocationTree;Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p1

    return-object p1
.end method

.method public getBranchListContainsSelfAndAncestorsInAscendingSort()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-direct {p0, v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->putSelfAndAncestorsIntoLocationBranchList(Ljava/util/List;)V

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->children:Ljava/util/List;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 94
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->depth:I

    return v0
.end method

.method public getHighestAncientNodeUnderType(I)Lus/zoom/zrcsdk/model/ZRCLocationTree;
    .locals 2

    .line 258
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ne v0, p1, :cond_1

    return-object p0

    .line 268
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 269
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getType()I

    move-result v1

    if-le v1, p1, :cond_2

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCLocationTree;->getHighestAncientNodeUnderType(I)Lus/zoom/zrcsdk/model/ZRCLocationTree;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object p0
.end method

.method public getLocationID()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->locationID:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lus/zoom/zrcsdk/model/ZRCLocationTree;
    .locals 1

    .line 78
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->parent:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    return-object v0
.end method

.method public getParentID()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->parentID:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 110
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->type:I

    return v0
.end method

.method public hasChildren()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->children:Ljava/util/List;

    if-eqz v0, :cond_0

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

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    .line 162
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->assignable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->locationID:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->text:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->parentID:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->children:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->fetchedTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAssignable()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->assignable:Z

    return v0
.end method

.method public isExpand()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->expand:Z

    return v0
.end method

.method public isExpired()Z
    .locals 5

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->fetchedTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLastChild()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->isLastChild:Z

    return v0
.end method

.method public setAssignable(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->assignable:Z

    return-void
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCLocationTree;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->children:Ljava/util/List;

    return-void
.end method

.method public setDepth(I)V
    .locals 0

    .line 98
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->depth:I

    return-void
.end method

.method public setExpand(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->expand:Z

    return-void
.end method

.method public setFetchedTimeMillis(J)V
    .locals 0

    .line 138
    iput-wide p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->fetchedTimeMillis:J

    return-void
.end method

.method public setLastChild(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->isLastChild:Z

    return-void
.end method

.method public setLocationID(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->locationID:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->parent:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    return-void
.end method

.method public setParentID(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->parentID:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 114
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCLocationTree{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", assignable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->assignable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", locationID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->locationID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", parentID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->parentID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->parent:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->children:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 174
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->expand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->depth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLastChild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lus/zoom/zrcsdk/model/ZRCLocationTree;->isLastChild:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
