# classes.dex

.class public Landroid/content/pm/AppSearchShortcutPerson$Builder;
.super Landroid/app/appsearch/GenericDocument$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/AppSearchShortcutPerson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/appsearch/GenericDocument$Builder<",
        "Landroid/content/pm/AppSearchShortcutPerson$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    const-string v1, "ShortcutPerson"

    invoke-direct {p0, v0, p1, v1}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroid/app/appsearch/GenericDocument;
    .registers 2

    invoke-virtual {p0}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->build()Landroid/content/pm/AppSearchShortcutPerson;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroid/content/pm/AppSearchShortcutPerson;
    .registers 3

    new-instance v0, Landroid/content/pm/AppSearchShortcutPerson;

    invoke-super {p0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/AppSearchShortcutPerson;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object v0
.end method

.method public setIcon([B)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .registers 4

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyBytes(Ljava/lang/String;[[B)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_d
    return-object p0
.end method

.method public setIsBot(Z)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    const-string v1, "isBot"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyBoolean(Ljava/lang/String;[Z)Landroid/app/appsearch/GenericDocument$Builder;

    return-object p0
.end method

.method public setIsImportant(Z)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    const-string v1, "isImportant"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyBoolean(Ljava/lang/String;[Z)Landroid/app/appsearch/GenericDocument$Builder;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .registers 4

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "key"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_d
    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutPerson$Builder;
    .registers 5

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "name"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/AppSearchShortcutPerson$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    :cond_12
    return-object p0
.end method
