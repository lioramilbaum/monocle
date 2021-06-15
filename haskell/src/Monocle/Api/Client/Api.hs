{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-missing-export-lists -fno-warn-unused-imports #-}

-- Generated by monocle-codegen. DO NOT EDIT!

-- |
-- Copyright: (c) 2021 Monocle authors
-- SPDX-License-Identifier: AGPL-3.0-only
module Monocle.Api.Client.Api where

import Control.Monad.Catch (MonadThrow)
import Control.Monad.IO.Class (MonadIO)
import Monocle.Api.Client.Internal (MonocleClient, monocleReq)
import Monocle.Config
import Monocle.Search
import Monocle.TaskData

configGetProjects :: (MonadThrow m, MonadIO m) => MonocleClient -> GetProjectsRequest -> m GetProjectsResponse
configGetProjects = monocleReq "api/1/get_projects"

configHealth :: (MonadThrow m, MonadIO m) => MonocleClient -> HealthRequest -> m HealthResponse
configHealth = monocleReq "api/2/health"

searchSuggestions :: (MonadThrow m, MonadIO m) => MonocleClient -> SearchSuggestionsRequest -> m SearchSuggestionsResponse
searchSuggestions = monocleReq "api/1/suggestions"

searchFields :: (MonadThrow m, MonadIO m) => MonocleClient -> FieldsRequest -> m FieldsResponse
searchFields = monocleReq "api/2/search/fields"

searchQuery :: (MonadThrow m, MonadIO m) => MonocleClient -> QueryRequest -> m QueryResponse
searchQuery = monocleReq "api/2/search/query"

taskDataCommit :: (MonadThrow m, MonadIO m) => MonocleClient -> TaskDataCommitRequest -> m TaskDataCommitResponse
taskDataCommit = monocleReq "api/1/task_data_commit"

taskDataGetLastUpdated :: (MonadThrow m, MonadIO m) => MonocleClient -> TaskDataGetLastUpdatedRequest -> m TaskDataGetLastUpdatedResponse
taskDataGetLastUpdated = monocleReq "api/1/task_data_get_last_updated"

taskDataAdd :: (MonadThrow m, MonadIO m) => MonocleClient -> AddRequest -> m AddResponse
taskDataAdd = monocleReq "api/1/task_data_add"

crawlerAdd :: (MonadThrow m, MonadIO m) => MonocleClient -> AddRequest -> m AddResponse
crawlerAdd = monocleReq "api/2/crawler/add"

crawlerCommit :: (MonadThrow m, MonadIO m) => MonocleClient -> CommitRequest -> m CommitResponse
crawlerCommit = monocleReq "api/2/crawler/commit"

crawlerCommitInfo :: (MonadThrow m, MonadIO m) => MonocleClient -> CommitInfoRequest -> m CommitInfoResponse
crawlerCommitInfo = monocleReq "api/2/crawler/get_commit_info"
