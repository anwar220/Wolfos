# classes3.dex

.class public abstract Landroid/provider/DocumentsProvider;
.super Landroid/content/ContentProvider;


# static fields
.field private static final MATCH_CHILDREN:I = 0x6

.field private static final MATCH_CHILDREN_TREE:I = 0x8

.field private static final MATCH_DOCUMENT:I = 0x5

.field private static final MATCH_DOCUMENT_TREE:I = 0x7

.field private static final MATCH_RECENT:I = 0x3

.field private static final MATCH_ROOT:I = 0x2

.field private static final MATCH_ROOTS:I = 0x1

.field private static final MATCH_SEARCH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DocumentsProvider"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v2}, Landroid/provider/DocumentsProvider;->enforceTreeForExtraUris(Landroid/os/Bundle;)V

    nop

    const-string/jumbo v5, "uri"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-direct {v0, v6}, Landroid/provider/DocumentsProvider;->validateIncomingNullableUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    nop

    const-string v7, "android.content.extra.TARGET_URI"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-direct {v0, v7}, Landroid/provider/DocumentsProvider;->validateIncomingNullableUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    nop

    const-string/jumbo v8, "parentUri"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-direct {v0, v8}, Landroid/provider/DocumentsProvider;->validateIncomingNullableUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "android:ejectRoot"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    move-object v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    invoke-static {v5}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/provider/DocumentsProvider;->ejectRoot(Ljava/lang/String;)V

    return-object v4

    :cond_53
    move-object v9, v6

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2ee

    const-string v12, "android:isChildDocument"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string/jumbo v15, "result"

    if-eqz v12, :cond_99

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    move-object v5, v7

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8f

    invoke-virtual {v0, v11, v13}, Landroid/provider/DocumentsProvider;->isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8f

    const/4 v14, 0x1

    goto :goto_90

    :cond_8f
    const/4 v14, 0x0

    :goto_90
    invoke-virtual {v4, v15, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_2c7

    :cond_99
    const-string v12, "android:createDocument"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "_display_name"

    if-eqz v12, :cond_c6

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v12

    invoke-virtual {v0, v9, v12}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    const-string/jumbo v12, "mime_type"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v11, v12, v13}, Landroid/provider/DocumentsProvider;->createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v4, v5, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_2c7

    :cond_c6
    const-string v12, "android:createWebLinkIntent"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e9

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    const-string/jumbo v5, "options"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Landroid/provider/DocumentsProvider;->createWebLinkIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/IntentSender;

    move-result-object v12

    invoke-virtual {v4, v15, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_2c7

    :cond_e9
    const-string v12, "android:renameDocument"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_123

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v12

    invoke-virtual {v0, v9, v12}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/provider/DocumentsProvider;->renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_11d

    invoke-static {v9, v13}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v14}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v15

    if-nez v15, :cond_117

    invoke-static {v3, v9}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v14, v15}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_117
    invoke-virtual {v4, v5, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->revokeDocumentPermission(Ljava/lang/String;)V

    :cond_11d
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_2c7

    :cond_123
    const-string v2, "android:deleteDocument"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13e

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->deleteDocument(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->revokeDocumentPermission(Ljava/lang/String;)V

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_2c7

    :cond_13e
    const-string v2, "android:copyDocument"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_185

    move-object v2, v7

    invoke-static {v2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v13

    invoke-virtual {v0, v9, v13}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v13

    invoke-virtual {v0, v2, v13}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    invoke-virtual {v0, v11, v12}, Landroid/provider/DocumentsProvider;->copyDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_17d

    invoke-static {v9, v13}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v14}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v15

    if-nez v15, :cond_177

    invoke-static {v3, v9}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v15

    move-object/from16 v16, v2

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v14, v15}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_179

    :cond_177
    move-object/from16 v16, v2

    :goto_179
    invoke-virtual {v4, v5, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_17f

    :cond_17d
    move-object/from16 v16, v2

    :goto_17f
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_2c7

    :cond_185
    const-string v2, "android:moveDocument"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1de

    move-object v2, v8

    invoke-static {v2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    move-object v13, v7

    invoke-static {v13}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v15

    invoke-virtual {v0, v9, v15}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v15

    invoke-virtual {v0, v13, v15}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    invoke-virtual {v0, v11, v12, v14}, Landroid/provider/DocumentsProvider;->moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1d6

    move-object/from16 v16, v2

    invoke-static {v9, v15}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v17

    if-nez v17, :cond_1ce

    move-object/from16 v18, v6

    invoke-static {v3, v9}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    move-object/from16 v19, v7

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v2, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1d2

    :cond_1ce
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    :goto_1d2
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1dc

    :cond_1d6
    move-object/from16 v16, v2

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    :goto_1dc
    goto/16 :goto_2c7

    :cond_1de
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    const-string v2, "android:removeDocument"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    move-object v2, v8

    invoke-static {v2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    invoke-virtual {v0, v9, v6}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    invoke-virtual {v0, v11, v5}, Landroid/provider/DocumentsProvider;->removeDocument(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c7

    :cond_202
    const-string v2, "android:findDocumentPath"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c8

    invoke-static {v9}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_219

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    invoke-virtual {v0, v9, v6}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    goto :goto_222

    :cond_219
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_222
    if-eqz v2, :cond_229

    invoke-static {v9}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    goto :goto_22a

    :cond_229
    move-object v6, v5

    :goto_22a
    nop

    invoke-virtual {v0, v6, v11}, Landroid/provider/DocumentsProvider;->findDocumentPath(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/DocumentsContract$Path;

    move-result-object v7

    if-eqz v2, :cond_2c3

    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "DocumentsProvider"

    if-nez v12, :cond_292

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Provider doesn\'t return path from the tree root. Expected: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " found: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v14

    const/4 v5, 0x0

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/LinkedList;

    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    :goto_276
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v12

    const/4 v14, 0x1

    if-le v12, v14, :cond_28b

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_28b

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_276

    :cond_28b
    new-instance v12, Landroid/provider/DocumentsContract$Path;

    const/4 v14, 0x0

    invoke-direct {v12, v14, v5}, Landroid/provider/DocumentsContract$Path;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v7, v12

    :cond_292
    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getRootId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2c3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Provider returns root id :"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getRootId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " unexpectedly. Erase root id."

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/provider/DocumentsContract$Path;

    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v5, v13, v12}, Landroid/provider/DocumentsContract$Path;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v7, v5

    :cond_2c3
    invoke-virtual {v4, v15, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    nop

    :goto_2c7
    return-object v4

    :cond_2c8
    const-string v2, "android:getDocumentMetadata"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d5

    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->getDocumentMetadata(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    :cond_2d5
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Method not supported "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2ee
    move-object/from16 v18, v6

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested authority "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t match provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private enforceTree(Landroid/net/Uri;)V
    .registers 7

    if-eqz p1, :cond_41

    invoke-static {p1}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    return-void

    :cond_17
    invoke-virtual {p0, v0, v1}, Landroid/provider/DocumentsProvider;->isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_41

    :cond_1e
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Document "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a descendant of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_41
    :goto_41
    return-void
.end method

.method private enforceTreeForExtraUris(Landroid/os/Bundle;)V
    .registers 3

    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    const-string/jumbo v0, "parentUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    const-string v0, "android.content.extra.TARGET_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    return-void
.end method

.method private static getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_a

    or-int/lit8 v0, v0, 0x1

    :cond_a
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_13

    or-int/lit8 v0, v0, 0x2

    :cond_13
    const/16 v1, 0x41

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_1d

    or-int/lit8 v0, v0, 0x40

    :cond_1d
    return v0
.end method

.method private static getSortClause(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_6
    move-object p0, v0

    const-string v0, "android:query-arg-sql-sort-order"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string v1, "android:query-arg-sort-columns"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {p0}, Landroid/content/ContentResolver;->createSqlSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    return-object v0
.end method

.method private final openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_1c

    const-string v1, "android.content.extra.SIZE"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    invoke-virtual {p0, v0, v1, p4}, Landroid/provider/DocumentsProvider;->openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    return-object v2

    :cond_1c
    const-string v1, "*/*"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "r"

    if-eqz v1, :cond_2c

    invoke-virtual {p0, p1, v2}, Landroid/provider/DocumentsProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1

    :cond_2c
    invoke-virtual {p0, p1}, Landroid/provider/DocumentsProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-static {v1, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {p0, p1, v2}, Landroid/provider/DocumentsProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    return-object v2

    :cond_3d
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/provider/DocumentsProvider;->openTypedDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method private registerAuthority(Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*/recent"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*/search"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "document/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "document/*/children"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "tree/*/document/*"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "tree/*/document/*/children"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private validateIncomingNullableUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0, p1}, Landroid/provider/DocumentsProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :goto_8
    return-object v0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 5

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->registerAuthority(Ljava/lang/String;)V

    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_2b

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v1, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    :cond_23
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must be protected by MANAGE_DOCUMENTS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must grantUriPermissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->registerAuthority(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    const-string v0, "android:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_d
    :try_start_d
    invoke-direct {p0, p1, p2, p3}, Landroid/provider/DocumentsProvider;->callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6

    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    const/4 v1, 0x0

    return-object v1

    :pswitch_f  #0x7
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, p1}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-object v1

    :pswitch_data_2a
    .packed-switch 0x7
        :pswitch_f  #00000007
    .end packed-switch
.end method

.method public copyDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Copy not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Create not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createWebLinkIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/IntentSender;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createWebLink is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteDocument(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ejectRoot(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Eject not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findDocumentPath(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/DocumentsContract$Path;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "findDocumentPath not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentMetadata(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Metadata not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentStreamTypes(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "mime_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "flags"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x200

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3d

    if-eqz v2, :cond_3d

    invoke-static {v2, p2}, Landroid/content/MimeTypeFilter;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_39} :catch_47
    .catchall {:try_start_2 .. :try_end_39} :catchall_42

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v5

    :cond_3d
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-object v1

    :catchall_42
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    :catch_47
    move-exception v2

    nop

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1
.end method

.method public getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string/jumbo v0, "mime_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1f

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :cond_1a
    nop

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :catchall_1f
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/provider/DocumentsProvider;->getDocumentStreamTypes(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_24

    return-object v0

    :sswitch_b
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/provider/DocumentsProvider;->getDocumentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_17
    const-string/jumbo v0, "vnd.android.document/root"
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v1

    const-string v2, "DocumentsProvider"

    const-string v3, "Failed during getType"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :sswitch_data_24
    .sparse-switch
        0x2 -> :sswitch_17
        0x5 -> :sswitch_b
        0x7 -> :sswitch_b
    .end sparse-switch
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Insert not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Move not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_19

    new-instance v1, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    move-object v2, v1

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :cond_19
    return-object v1
.end method

.method public final openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_19

    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    goto :goto_1a

    :cond_19
    const/4 v7, 0x0

    :goto_1a
    return-object v7
.end method

.method public abstract openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Thumbnails not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/provider/DocumentsProvider;->openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/provider/DocumentsProvider;->openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openTypedDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "The requested MIME type is not supported."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 8

    :try_start_0
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_72

    :pswitch_9  #0x2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    goto :goto_50

    :pswitch_c  #0x6, 0x8
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->isManageMode(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_23

    nop

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Landroid/provider/DocumentsProvider;->getSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Landroid/provider/DocumentsProvider;->queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_23
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_2c  #0x5, 0x7
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_38  #0x4
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->querySearchDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_41  #0x3
    nop

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/provider/DocumentsProvider;->queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_4b  #0x1
    invoke-virtual {p0, p2}, Landroid/provider/DocumentsProvider;->queryRoots([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :goto_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_67} :catch_67

    :catch_67
    move-exception v0

    const-string v1, "DocumentsProvider"

    const-string v2, "Failed during query"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_9  #00000002
        :pswitch_41  #00000003
        :pswitch_38  #00000004
        :pswitch_2c  #00000005
        :pswitch_c  #00000006
        :pswitch_2c  #00000007
        :pswitch_c  #00000008
    .end packed-switch
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pre-Android-O query format not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 9

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pre-Android-O query format not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    nop

    invoke-static {p3}, Landroid/provider/DocumentsProvider;->getSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/provider/DocumentsProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public abstract queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Manage not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Recent not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "rootId can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Landroid/provider/DocumentsProvider;->queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.content.extra.HONORED_ARGS"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract queryRoots([Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Search not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public querySearchDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "rootId can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "queryArgs can not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Landroid/provider/DocumentsContract;->getSearchDocumentsQuery(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/provider/DocumentsProvider;->querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public removeDocument(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Rename not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final revokeDocumentPermission(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Update not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
