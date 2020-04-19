.class public Lus/zoom/zrcsdk/model/ZRCDynamicContactList;
.super Ljava/lang/Object;
.source "ZRCDynamicContactList.java"


# instance fields
.field private contactList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field private contactsExpired:Z

.field private contactsIndexedByJid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyword:Ljava/lang/String;

.field private numberOfContacts:I

.field private numberOfRooms:I

.field private requestingContacts:Z

.field private searchContactIndexByJid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchContactList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field private searchOnCloudContact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field

.field private searchingContacts:Z

.field private totalNumberOfContactsInSearchResult:I

.field private totalNumberOfContactsInSearchWebResult:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactList:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactList:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactsIndexedByJid:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactIndexByJid:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchOnCloudContact:Ljava/util/Map;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->numberOfContacts:I

    .line 82
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->numberOfRooms:I

    .line 83
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->totalNumberOfContactsInSearchResult:I

    .line 84
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->totalNumberOfContactsInSearchWebResult:I

    .line 85
    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->requestingContacts:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 198
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 199
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 200
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactsIndexedByJid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 201
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactIndexByJid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 202
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchOnCloudContact:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->numberOfContacts:I

    .line 204
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->numberOfRooms:I

    .line 205
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->totalNumberOfContactsInSearchResult:I

    .line 206
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->totalNumberOfContactsInSearchWebResult:I

    .line 207
    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->requestingContacts:Z

    .line 208
    iput-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactsExpired:Z

    return-void
.end method

.method public clearContactList()V
    .locals 1

    .line 185
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 186
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactsIndexedByJid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contacts2ArrayList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 223
    :goto_0
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 224
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactsIndexedByJid:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCContact;

    if-eqz v2, :cond_0

    .line 227
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public copy()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;
    .locals 1

    .line 71
    invoke-virtual {p0, p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->copyFrom(Lus/zoom/zrcsdk/model/ZRCDynamicContactList;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lus/zoom/zrcsdk/model/ZRCDynamicContactList;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;
    .locals 5

    .line 31
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;-><init>()V

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactList:Ljava/util/Map;

    .line 33
    iget-object v1, p1, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    new-instance v3, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-direct {v3}, Lus/zoom/zrcsdk/model/ZRCContact;-><init>()V

    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {v3, v4}, Lus/zoom/zrcsdk/model/ZRCContact;->update(Lus/zoom/zrcsdk/model/ZRCContact;)V

    .line 36
    iget-object v4, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactList:Ljava/util/Map;

    .line 39
    iget-object v1, p1, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 40
    new-instance v3, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-direct {v3}, Lus/zoom/zrcsdk/model/ZRCContact;-><init>()V

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {v3, v4}, Lus/zoom/zrcsdk/model/ZRCContact;->update(Lus/zoom/zrcsdk/model/ZRCContact;)V

    .line 42
    iget-object v4, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 45
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactsIndexedByJid:Ljava/util/Map;

    .line 46
    iget-object v1, p1, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactsIndexedByJid:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 47
    iget-object v3, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactsIndexedByJid:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 49
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactIndexByJid:Ljava/util/Map;

    .line 50
    iget-object v1, p1, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactIndexByJid:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    iget-object v3, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactIndexByJid:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 54
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchOnCloudContact:Ljava/util/Map;

    .line 55
    iget-object v1, p1, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchOnCloudContact:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 56
    new-instance v3, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-direct {v3}, Lus/zoom/zrcsdk/model/ZRCContact;-><init>()V

    .line 57
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {v3, v4}, Lus/zoom/zrcsdk/model/ZRCContact;->update(Lus/zoom/zrcsdk/model/ZRCContact;)V

    .line 58
    iget-object v4, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchOnCloudContact:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 60
    :cond_4
    iget v1, p1, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->numberOfRooms:I

    iput v1, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->numberOfRooms:I

    .line 61
    iget v1, p1, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->numberOfContacts:I

    iput v1, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->numberOfContacts:I

    .line 62
    iget v1, p1, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->totalNumberOfContactsInSearchResult:I

    iput v1, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->totalNumberOfContactsInSearchResult:I

    .line 63
    iget v1, p1, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->totalNumberOfContactsInSearchWebResult:I

    iput v1, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->totalNumberOfContactsInSearchWebResult:I

    .line 64
    iget-boolean v1, p1, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->requestingContacts:Z

    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->requestingContacts:Z

    .line 65
    iget-boolean v1, p1, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactsExpired:Z

    iput-boolean v1, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactsExpired:Z

    .line 66
    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->keyword:Ljava/lang/String;

    iput-object p1, v0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getContactList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactList:Ljava/util/Map;

    return-object v0
.end method

.method public getContactsIndexedByJid()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactsIndexedByJid:Ljava/util/Map;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfContacts()I
    .locals 1

    .line 145
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->numberOfContacts:I

    return v0
.end method

.method public getNumberOfRooms()I
    .locals 1

    .line 137
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->numberOfRooms:I

    return v0
.end method

.method public getSearchContactIndexByJid()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactIndexByJid:Ljava/util/Map;

    return-object v0
.end method

.method public getSearchContactList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactList:Ljava/util/Map;

    return-object v0
.end method

.method public getSearchOnCloudContact()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchOnCloudContact:Ljava/util/Map;

    return-object v0
.end method

.method public getTotalNumberOfContactsInSearchResult()I
    .locals 1

    .line 153
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->totalNumberOfContactsInSearchResult:I

    return v0
.end method

.method public getTotalNumberOfContactsInSearchWebResult()I
    .locals 1

    .line 129
    iget v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->totalNumberOfContactsInSearchWebResult:I

    return v0
.end method

.method public isContactsExpired()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactsExpired:Z

    return v0
.end method

.method public isRequestingContacts()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->requestingContacts:Z

    return v0
.end method

.method public isSearchingContacts()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchingContacts:Z

    return v0
.end method

.method public searchContacts2ArrayList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 235
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchResult()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 236
    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactIndexByJid:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCContact;

    if-eqz v2, :cond_0

    .line 239
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public searchFinished()V
    .locals 1

    .line 212
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 213
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactIndexByJid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 214
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchOnCloudContact:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 215
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->totalNumberOfContactsInSearchResult:I

    .line 216
    iput v0, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->totalNumberOfContactsInSearchWebResult:I

    return-void
.end method

.method public searchOnCloudContacts2ArrayList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchOnCloudContact:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 248
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 249
    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    iget-object v3, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchOnCloudContact:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCContact;

    if-eqz v2, :cond_0

    .line 252
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setContactList(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactList:Ljava/util/Map;

    return-void
.end method

.method public setContactsExpired(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactsExpired:Z

    return-void
.end method

.method public setContactsIndexedByJid(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contactsIndexedByJid:Ljava/util/Map;

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setNumberOfContacts(I)V
    .locals 0

    .line 149
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->numberOfContacts:I

    return-void
.end method

.method public setNumberOfRooms(I)V
    .locals 0

    .line 141
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->numberOfRooms:I

    return-void
.end method

.method public setRequestingContacts(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->requestingContacts:Z

    return-void
.end method

.method public setSearchContactIndexByJid(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactIndexByJid:Ljava/util/Map;

    return-void
.end method

.method public setSearchContactList(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContactList:Ljava/util/Map;

    return-void
.end method

.method public setSearchOnCloudContact(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchOnCloudContact:Ljava/util/Map;

    return-void
.end method

.method public setSearchingContacts(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchingContacts:Z

    return-void
.end method

.method public setTotalNumberOfContactsInSearchResult(I)V
    .locals 0

    .line 157
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->totalNumberOfContactsInSearchResult:I

    return-void
.end method

.method public setTotalNumberOfContactsInSearchWebResult(I)V
    .locals 0

    .line 133
    iput p1, p0, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->totalNumberOfContactsInSearchWebResult:I

    return-void
.end method

.method public updateContacts(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactList()Ljava/util/Map;

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchContactList()Ljava/util/Map;

    move-result-object v1

    .line 308
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchOnCloudContact()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    .line 309
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 310
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 312
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrcsdk/model/ZRCContact;

    if-eqz v5, :cond_0

    .line 313
    invoke-virtual {v5, v4}, Lus/zoom/zrcsdk/model/ZRCContact;->update(Lus/zoom/zrcsdk/model/ZRCContact;)V

    .line 315
    :cond_0
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrcsdk/model/ZRCContact;

    if-eqz v5, :cond_1

    .line 316
    invoke-virtual {v5, v4}, Lus/zoom/zrcsdk/model/ZRCContact;->update(Lus/zoom/zrcsdk/model/ZRCContact;)V

    .line 318
    :cond_1
    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrcsdk/model/ZRCContact;

    if-eqz v5, :cond_2

    .line 319
    invoke-virtual {v5, v4}, Lus/zoom/zrcsdk/model/ZRCContact;->update(Lus/zoom/zrcsdk/model/ZRCContact;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public updateDynamicContactList(Ljava/util/ArrayList;Ljava/lang/String;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setRequestingContacts(Z)V

    .line 261
    invoke-static {p2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {p0, v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setRequestingContacts(Z)V

    .line 263
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->isContactsExpired()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 264
    invoke-virtual {p0, v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setContactsExpired(Z)V

    .line 265
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->clearContactList()V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactList()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    .line 268
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactList()Ljava/util/Map;

    move-result-object p3

    .line 269
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactsIndexedByJid()Ljava/util/Map;

    move-result-object p4

    .line 270
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 271
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 272
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int v2, p2, v0

    .line 273
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 277
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchFinished()V

    return-void

    .line 280
    :cond_2
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchContactList()Ljava/util/Map;

    move-result-object p2

    .line 281
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchContactIndexByJid()Ljava/util/Map;

    move-result-object v1

    .line 282
    invoke-virtual {p0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchOnCloudContact()Ljava/util/Map;

    move-result-object v2

    .line 283
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz p4, :cond_4

    .line 285
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_3

    .line 286
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 287
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v2, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 289
    :cond_3
    invoke-virtual {p0, p3}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setTotalNumberOfContactsInSearchWebResult(I)V

    goto :goto_4

    .line 291
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge v0, p4, :cond_6

    .line 292
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 293
    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 294
    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {v2, p4}, Lus/zoom/zrcsdk/model/ZRCContact;->update(Lus/zoom/zrcsdk/model/ZRCContact;)V

    goto :goto_3

    .line 296
    :cond_5
    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int v2, v3, v0

    .line 297
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 300
    :cond_6
    invoke-virtual {p0, p3}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setTotalNumberOfContactsInSearchResult(I)V

    :cond_7
    :goto_4
    return-void
.end method
