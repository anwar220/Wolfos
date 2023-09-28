# classes.dex

.class public final Landroid/content/MimeTypeFilter;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matches(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, p1

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1e

    aget-object v5, p1, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    return-object v5

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1e
    return-object v0
.end method

.method public static matches([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, p0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1e

    aget-object v5, p0, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    return-object v5

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1e
    return-object v0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static matchesMany([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, p0

    :goto_12
    if-ge v0, v4, :cond_26

    aget-object v5, p0, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    const/4 v0, 0x0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_43

    array-length v3, p0

    if-eq v3, v1, :cond_1a

    return v0

    :cond_1a
    aget-object v1, p1, v0

    const-string v3, "*"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    aget-object v1, p1, v0

    aget-object v4, p0, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v0

    :cond_2f
    aget-object v1, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    aget-object v1, p1, v2

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v0

    :cond_42
    return v2

    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ill-formatted MIME type filter. Type or subtype empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ill-formatted MIME type filter. Must be type/subtype."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
